const AWS = require('aws-sdk');
const stepfunctions = new AWS.StepFunctions();

exports.handler = async (event) => {
    try {
        // The ARN of the state machine will be passed through the event object
        const stateMachineArn = event.ResourceProperties.StateMachineArn;
        
        // Define the new state machine definition
        const newStateMachineDefinition = {
            "Comment": "Reservation State Machine",
            "StartAt": "SearchOrCRUD",
            "States": {
                "SearchOrCRUD": {
                    "Type": "Choice",
                    "Choices": [
                        {
                            "Variable": "$.action",
                            "StringEquals": "search",
                            "Next": "SearchLambdaFunction"
                        },
                        {
                            "Variable": "$.action",
                            "StringEquals": "crud",
                            "Next": "CRUDLambdaFunction"
                        }
                    ]
                },
                "SearchLambdaFunction": {
                    "Type": "Task",
                    "Resource": "arn:aws:lambda:ca-central:741935926066:function:SearchLambdaFunction",
                    "End": true
                },
                "CRUDLambdaFunction": {
                    "Type": "Task",
                    "Resource": "arn:aws:lambda:ca-central:741935926066:function:CRUDLambdaFunction",
                    "End": true
                }
            }
        };

        // Update the state machine
        const params = {
            definition: JSON.stringify(newStateMachineDefinition),
            stateMachineArn: stateMachineArn
        };

        await stepfunctions.updateStateMachine(params).promise();

        return {
            Status: 'SUCCESS',
            Reason: 'State machine updated successfully.',
            PhysicalResourceId: stateMachineArn,
            StackId: event.StackId,
            RequestId: event.RequestId,
            LogicalResourceId: event.LogicalResourceId,
        };
    } catch (error) {
        console.error(error);
        return {
            Status: 'FAILED',
            Reason: 'State machine update failed.',
            PhysicalResourceId: 'N/A',
            StackId: event.StackId,
            RequestId: event.RequestId,
            LogicalResourceId: event.LogicalResourceId,
        };
    }
};
