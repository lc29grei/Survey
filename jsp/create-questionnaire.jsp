<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Create Survey</title>
    
    <!-- Core CSS -->
    <link rel="stylesheet" href="/cps/styles/test/bootstrap.css">
    <link rel="stylesheet" href="/cps/styles/test/jquery.mobile-1.3.2.css">
    <link rel="stylesheet" href="/cps/styles/test/overrides.css">
    <link rel="stylesheet" href="/cps/styles/test/standards.css">
    <link rel="stylesheet" href="/cps/styles/test/survey.css">

	<!-- font scripts -->
	<script type="text/javascript" src="//use.typekit.net/xgk5ume.js"></script>
	<style type="text/css">.tk-franklin-gothic-urw{font-family:"franklin-gothic-urw",arial,sans-serif;}.tk-franklin-gothic-urw-comp{font-family:"franklin-gothic-urw-comp",sans-serif;}</style>
	<script type="text/javascript">try{Typekit.load();}catch(e){}</script>
	
  </head>
  
  <body>
    
     <!-- Header begins //-->
    <header>
      <div class="container">
        <div class="row">
          <!-- Profile //-->
          <div class="userProfile col-xs-12">
            <div class="row">
				<!-- body content //-->
				<div class="col-xs-3">
					<div class="axaLogo">
						<img src="/cps/styles/test/images/logo-AXA.png" height="52px">
					</div>
				</div>
				<div class="col-xs-3"></div>
				<div class="col-xs-6">
					<h4 style="padding-top:20px; float:right;">Create Questionnaire</h4>
				</div>
            </div>
          </div>
        </div>
      </div>
    </header>
	<!--End of header -->
    
    
    <div id="wrapper">
		<!-- article begins //-->
		<article class="content-default">
			<div class="container">
				<div class="row" id="stickyRef1">
					<div class="surveyStartContent">
						<!-- main content //-->
						<div class="mainContent surveyStart">
							<!-- section 1 //-->
							<div class="row">
								<!-- body content //-->
								<div class="bodyContent col-xs-12">
									<!-- form starts -->
									<form id="createQuestionnaireForm">
										<div class="form-columns-inner">
											<div class="row">
												<div class="survey-title-container col-xs-10 col-xs-offset-1" style="padding-left:30px; padding-right: 30px;">
													<label for="create-questionnaire-title">Title:</label>
													<input name="create-questionnaire-title" id="create-questionnaire-title" value="" type="text" maxlength="50">
												</div>
											</div>
											
											<div class="surveyQuestionNumberTypeAnswer">
												<div class="row">									
													<div class=" col-xs-12 col-xl-12">
														<div class="surveyQuestionLeftDiv col-xs-1">
															<div class="questionLeftText"><h3>Q<span class="questionNumber">1</span>:</h3></div>
														</div>
														
														<div class="surveyQuestionTypeAnswer col-xs-10">
															<label for="textarea">Enter Question:</label>
															<textarea class="create-surveyQuestionTextArea" cols="40" rows="20" name="textarea" id="textarea"></textarea>
															
															<!-- radio answer type //-->
															<label for="selectAnswerType">Select Answer Type:</label>
															<fieldset class="selectAnswerType">
																<input name="selectAnswerTypeName" class="create-yesNoSelect" id="create-yesNoSelect" value="yesno" checked="checked" type="radio">
																<label for="create-yesNoSelect">Yes/No</label>
																<input name="selectAnswerTypeName" class="create-shortAnswerSelect" id="create-shortAnswerSelect" value="short" type="radio">
																<label for="create-shortAnswerSelect">Short Answer</label>
																<input name="selectAnswerTypeName" class="create-multipleChoiceSelect" id="create-multipleChoiceSelect" value="multiple" type="radio">
																<label for="create-multipleChoiceSelect">Multiple Choice</label>
															</fieldset>
															
															<!-- if multiple choice selected -->
															<div class="create-multipleChoiceSection" id="create-multipleChoiceSection">
																<label for="answersDropDown">Number of Answers:</label>
																<select class="answersDropDown" id="answersDropDown">
																	<option value="3">Three</option>
																	<option value="4">Four</option>
																	<option value="5">Five</option>
																</select>
																
																<!-- multiple choice answers -->
																<label for="create-AnswerA">Answer A:</label>
																<input name="create-AnswerA" id="create-AnswerA" value="" type="text">
																
																<label for="create-AnswerB">Answer B:</label>
																<input name="create-AnswerB" id="create-AnswerB" value="" type="text">
																
																<label for="create-AnswerC">Answer C:</label>
																<input name="create-AnswerC" id="create-AnswerC" value="" type="text">
																
																<div class="create-AnswerDHideShow">
																	<label for="create-AnswerD">Answer D:</label>
																	<input name="create-AnswerD" class="create-AnswerD" id="create-AnswerD" value="" type="text">
																</div>
																
																<div class="create-AnswerEHideShow">
																	<label for="create-AnswerE">Answer E:</label>
																	<input name="create-AnswerE" class="create-AnswerE" id="create-AnswerE" value="" type="text">
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>	
										<div class="create-bottomButtons col-xs-10 col-xs-offset-1" style="padding-left:30px; padding-right: 30px;">				
											<!-- Add question button -->
											<button class="btn" data-role="none" type="button" onclick="addQuestion()">Add Question</button>
											<br /><br />
											<!-- Save/close buttons -->
											<button class="btn" type="submit" data-role="none">Save</button>
											<button class="btn" type="submit" data-role="none">Close</button>
										</div>
									</form>
									<!-- form ends -->
								</div>
							</div>
						</div>
					</div>
				</div>
			<!-- /section end //-->
			</div>
		</article>
		<!-- /article -->
	 </div>
    
  <!-- jQuery -->
  <script src="/cps/js/jquery.js">
  </script>
  <!-- jQuery (necessary for JqueryMobile plugins) -->
  <script src="/cps/js/jquery-1.9.1.js">
  </script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="/cps/js/bootstrap.min.js">
  </script>
  <!-- jQuery (includes all JqueryMobile plugins) -->
  <script src="/cps/js/jquery.mobile-1.3.2.min.js">
  </script>
  
  
  
<script>

	var totalQuestions = 1;
	
	//hide multiple choice
	$('.create-AnswerDHideShow').hide();
	$('.create-AnswerEHideShow').hide();
	
	//hide question1 deleteCol
	$('.create-deleteCol').hide();
	
	$(document).ready(function() { 
		
		// if answerType fieldset changes
		$('input:radio').change(function(){
			var value = $(this).val();
			if (value == 'multiple') {
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-multipleChoiceSection').show();
			}
			else {
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-multipleChoiceSection').hide();
			}
		});
		
		// drop down number of multiple choice answers changed
		$('.answersDropDown').change(function() {
			value = $(this).val();
			if (value == '3') {
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-AnswerDHideShow').hide();
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-AnswerD').val = '';
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-AnswerEHideShow').hide();
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-AnswerE').val = '';
			}
			else if (value == '4') {
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-AnswerDHideShow').show();
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-AnswerEHideShow').hide();
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-AnswerE').val = '';
			}
			else {
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-AnswerDHideShow').show();
				$(this).parents('.surveyQuestionTypeAnswer').find('.create-AnswerEHideShow').show();
			}
		});
		
		
		// delete row click
		$( ".create-deleteImage" ).on( "click", function() {
			alert("Delete clicked");
		});
	});
	
	function addQuestion() {
		totalQuestions++;
		$('<div class="surveyQuestionNumberTypeAnswer"><div class="row"><div class=" col-xs-12 col-xl-12"><div class="surveyQuestionLeftDiv col-xs-1"><div class="questionLeftText"><h3>Q<span class="questionNumber"></span>:</h3></div></div><div class="surveyQuestionTypeAnswer col-xs-10"><label for="textarea">Enter Question:</label><textarea class="create-surveyQuestionTextArea" cols="40" rows="20" name="textarea" id="textarea"></textarea><label for="selectAnswerType">Select Answer Type:</label><fieldset class="selectAnswerType"><input name="selectAnswerTypeName" class="create-yesNoSelect" id="create-yesNoSelect" value="yesno" checked="checked" type="radio"><label for="create-yesNoSelect">Yes/No</label><input name="selectAnswerTypeName" class="create-shortAnswerSelect" id="create-shortAnswerSelect" value="short" type="radio"><label for="create-shortAnswerSelect">Short Answer</label><input name="selectAnswerTypeName" class="create-multipleChoiceSelect" id="create-multipleChoiceSelect" value="multiple" type="radio"><label for="create-multipleChoiceSelect">Multiple Choice</label></fieldset><div class="create-multipleChoiceSection" id="create-multipleChoiceSection"><label for="answersDropDown">Number of Answers:</label><select class="answersDropDown" id="answersDropDown"><option value="3">Three</option><option value="4">Four</option><option value="5">Five</option></select><label for="create-AnswerA">Answer A:</label><input name="create-AnswerA" id="create-AnswerA" value="" type="text"><label for="create-AnswerB">Answer B:</label><input name="create-AnswerB" id="create-AnswerB" value="" type="text"><label for="create-AnswerC">Answer C:</label><input name="create-AnswerC" id="create-AnswerC" value="" type="text"><div class="create-AnswerDHideShow"><label for="create-AnswerD">Answer D:</label><input name="create-AnswerD" class="create-AnswerD" id="create-AnswerD" value="" type="text"></div><div class="create-AnswerEHideShow"><label for="create-AnswerE">Answer E:</label><input name="create-AnswerE" class="create-AnswerE" id="create-AnswerE" value="" type="text"></div></div></div><div class="create-deleteCol col-xs-1"><span class="create-deleteImage"></span></div></div></div></div>').insertBefore('.create-bottomButtons');
		
		$(".mainContent").trigger('create');
		
		updateQuestionNumbers();
	}
	
	function updateQuestionNumbers() {
	
		$(".questionNumber").each(function( index ) {
			$(this).html(index + 1);
		});
	}
	
	
	
</script>
  
  
  
</body>
</html>