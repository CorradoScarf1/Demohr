var task = $.usertasks.usertask1.last;
var decision = {
//	"User": task.processor,
//	"Role": $.context.UserId,
	"Decision": task.decision,
//	"Comment": $.context.comment
};
//$.context.comment = "";
if (task.decision == "approva") {
    $.context.approvalStatus = "approvato";
    $.context.secondoapprovatore = true;
} else {
	$.context.approvalStatus = "rifiuta";
	$.context.workflowTerminated = true;
    $.context.secondoapprovatore = false;
}
//$.context.internal.approvalStatus = "rifiuta";
//$.context.History.push(decision);
/*if (task.decision == "rework") {
    $.context.internal.step.isReapproval = true;
    $.context.internal.approvalStatus = "In Rework";
} else*/ 