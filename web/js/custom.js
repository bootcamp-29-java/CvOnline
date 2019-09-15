jQuery().ready(function () {
    $("#cv-2").hide(0);
    $("#cv-3").hide(0);
    $("#cv-4").hide(0);
    $("#cv-5").hide(0);
    $("#cv-6").hide(0);
    $("#cv-7").hide(0);
    $("#cv-8").hide(0);
    $("#cv-9").hide(0);
    $("#cv-10").hide(0);
    $("#cv-11").hide(0);

    $(".open-cv-1").click(function () {
        $(".frm").hide("fast");
        $("#cv-1").show("slow");
    });
    $(".open-cv-2").click(function () {
        $(".frm").hide("fast");
        $("#cv-2").show("slow");
    });
    $(".open-cv-3").click(function () {
        $(".frm").hide("fast");
        $("#cv-3").show("slow");
    });
    $(".open-cv-4").click(function () {
        $(".frm").hide("fast");
        $("#cv-4").show("slow");
    });
    $(".open-cv-5").click(function () {
        $(".frm").hide("fast");
        $("#cv-5").show("slow");
    });
    $(".open-cv-6").click(function () {
        $(".frm").hide("fast");
        $("#cv-6").show("slow");
    });
    $(".open-cv-7").click(function () {
        $(".frm").hide("fast");
        $("#cv-7").show("slow");
    });
    $(".open-cv-8").click(function () {
        $(".frm").hide("fast");
        $("#cv-8").show("slow");
    });
    $(".open-cv-9").click(function () {
        $(".frm").hide("fast");
        $("#cv-9").show("slow");
    });
    $(".open-cv-10").click(function () {
        $(".frm").hide("fast");
        $("#cv-10").show("slow");
    });
    $(".open-cv-11").click(function () {
        $(".frm").hide("fast");
        $("#cv-11").show("slow");
    });
});


$(document).ready(function () {
    $(".add-language").click(function () {
        var html = $(".copy-language").html();
        $(".after-add-language").before(html);
    });
    $("body").on("click", ".remove-language", function () {
        $(this).parents(".control-group-language").remove();
    });
});

$(document).ready(function () {
    $(".add-education").click(function () {
        var html = $(".copy-education").html();
        $(".after-add-education").before(html);
    });
    $("body").on("click", ".remove-education", function () {
        $(this).parents(".control-group-education").remove();
    });
});

$(document).ready(function () {
    $(".add-technical").click(function () {
        var html = $(".copy-technical").html();
        $(".after-add-technical").before(html);
    });
    $("body").on("click", ".remove-technical", function () {
        $(this).parents(".control-group-technical").remove();
    });
});

$(document).ready(function () {
    $(".add-work").click(function () {
        var html = $(".copy-work").html();
        $(".after-add-work").before(html);
    });
    $("body").on("click", ".remove-work", function () {
        $(this).parents(".control-group-work").remove();
    });
});

$(document).ready(function () {
    $(".add-project").click(function () {
        var html = $(".copy-project").html();
        $(".after-add-project").before(html);
    });
    $("body").on("click", ".remove-project", function () {
        $(this).parents(".control-group-project").remove();
    });
});

$(document).ready(function () {
    $(".add-certification").click(function () {
        var html = $(".copy-certification").html();
        $(".after-add-certification").before(html);
    });
    $("body").on("click", ".remove-certification", function () {
        $(this).parents(".control-group-certification").remove();
    });
});

$(document).ready(function () {
    $(".add-training").click(function () {
        var html = $(".copy-training").html();
        $(".after-add-training").before(html);
    });
    $("body").on("click", ".remove-training", function () {
        $(this).parents(".control-group-training").remove();
    });
});

$(document).ready(function () {
    $(".add-organization").click(function () {
        var html = $(".copy-organization").html();
        $(".after-add-organization").before(html);
    });
    $("body").on("click", ".remove-organization", function () {
        $(this).parents(".control-group-organization").remove();
    });
});

$(document).ready(function () {
    $(".add-experience").click(function () {
        var html = $(".copy-experience").html();
        $(".after-add-experience").before(html);
    });
    $("body").on("click", ".remove-experience", function () {
        $(this).parents(".control-group-experience").remove();
    });
});

$(document).ready(function () {
    $(".add-award").click(function () {
        var html = $(".copy-award").html();
        $(".after-add-award").before(html);
    });
    $("body").on("click", ".remove-award", function () {
        $(this).parents(".control-group-award").remove();
    });
});