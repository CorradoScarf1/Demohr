var task = $.usertasks.usertask2.last;
var decision = {
//	"User": task.processor,
//	"Role": $.context.UserId,
	"Decision": task.decision,
//	"Comment": $.context.comment
};
//$.context.comment = "";
if (task.decision == "approva") {
    $.context.approvalStatus = "approvato";
} else {
	$.context.approvalStatus = "rifiuta";
	$.context.workflowTerminated = true;
}
//$.context.internal.approvalStatus = "rifiuta";
//$.context.History.push(decision);
/*if (task.decision == "rework") {
    $.context.internal.step.isReapproval = true;
    $.context.internal.approvalStatus = "In Rework";
} else*/ 