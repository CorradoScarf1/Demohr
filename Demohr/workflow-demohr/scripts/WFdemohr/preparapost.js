/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;
var datacreazione = userTaskCompletedAt.toString().slice(0,10);
var req = {
    "ID_RICHIESTA": $.context.ID_RICHIESTA,
    "DESCRIPTION": $.context.DESCRIPTION,
    "USER_ID": $.context.USER_ID,
    "COMMENT": $.context.COMMENT,
    "TITOLO": $.context.TITOLO,
    "RAL": $.context.RAL,
    "POSITION": $.context.POSITION,
    "CREATION_DATE": datacreazione,
    "APPROVATORE": userTaskProcessor,
    "APPROVALSTATUS": $.context.approvalStatus
}
$.context.req = req;