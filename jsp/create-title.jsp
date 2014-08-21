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
    
    <title>Create Survey Title</title>
    
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
						<img src="images/logo-AXA.png" height="52px">
					</div>
				</div>
				<div class="col-xs-3"></div>
				<div class="col-xs-6">
					<h4 style="padding-top:20px; float:right;">Create Title Questionnaire</h4>
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
													<button class="btn" type="submit" data-role="none">Create</button>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</article>
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
  
    
  
</body>
</html>