const AWS = require('aws-sdk');
const stepfunctions = new AWS.StepFunctions();

exports.handler = async (event) => {
    const stateMachineArn = process.env.STATE_MACHINE_ARN;
    
    const params = {
        stateMachineArn: stateMachineArn,
        input: JSON.stringify(event)
    };
    
    try {
        const data = await stepfunctions.startExecution(params).promise();
        return {
            statusCode: 200,
            body: JSON.stringify(data)
        };
    } catch (err) {
        return {
            statusCode: 500,
            body: JSON.stringify(err)
        };
    }
};
