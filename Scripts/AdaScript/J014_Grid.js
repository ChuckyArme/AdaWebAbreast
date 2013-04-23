var tW_oldRow = "";
function J014_SETxChangeClass(ptRow) {
    if (tW_oldRow != ptRow) {
        document.getElementById(ptRow).setAttribute("class", "xCN_TableSelectRowColorTelerik xW_TdDetail xCN_MouseOver");
        if (tW_oldRow != "") {
            if ((tW_oldRow % 2) == 1) {
                document.getElementById(tW_oldRow).setAttribute("class", "xCN_TableDefaultRowColorTelerik xW_TdDetail xCN_MouseOver");
            }
            else {
                document.getElementById(tW_oldRow).setAttribute("class", "xCN_TableAlternateRowColorTelerik xW_TdDetail xCN_MouseOver");
            }
        }
        tW_oldRow = ptRow;
    }
}

var tW_OldRowMouseOver = '';
function J014_SETxClassWithMouseOver(ptRow) {
    if (ptRow != tW_oldRow) {
        $('#' + ptRow).addClass('xCN_TableOverRowColorTelerik xW_TdDetail xCN_MouseOver');
    }
    tW_OldRowMouseOver = ptRow;
}

function J014_SETxClassWithMouseOut(ptRow) {
    if ((tW_OldRowMouseOver != "") && (tW_OldRowMouseOver != tW_oldRow)) {
        if ((tW_OldRowMouseOver % 2) == 1) {
            $('#' + tW_OldRowMouseOver).attr("class", "xCN_TableDefaultRowColorTelerik xW_TdDetail xCN_MouseOver");
        }
        else {
            $('#' + tW_OldRowMouseOver).attr("class", "xCN_TableAlternateRowColorTelerik xW_TdDetail xCN_MouseOver");
        }
    }
}