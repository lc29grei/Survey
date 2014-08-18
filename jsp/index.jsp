<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
	"http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="description" content="">
    <meta name="author" content="">
    
    <title>Compliance Questionnaire Dashboard</title>
    
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="styles/bootstrap.css">
    <link rel="stylesheet" href="styles/jquery.mobile-1.3.2.css">
    <link rel="stylesheet" href="styles/overrides.css">
    <link rel="stylesheet" href="styles/actionbar.css">
    <link rel="stylesheet" href="styles/survey.css">
    
    
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>

	<![endif]-->
    
    <!--[if lt IE 8]>

	<![endif]-->
    
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
					<h4 style="padding-top:20px; float:right;">Compliance Questionnaire Dashboard</h4>
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
					<div class="surveyStartContent"
						<!-- main content //-->
						<div class="mainContent surveyStart">
							<!-- section 1 //-->
							<div class="row">
								<!-- body content //-->
								<div class="bodyContent col-xs-12 col-sm-12">
									<div class= "text-center">
										<a href="#" id="create-questionnaire" class="btn btn-lg surveyStartButton" data-role="none">Create Questionnaire<span class="icon icon-btn-arrow"></span></a>
										<br />
										<a href="#" id="manage-questionnaire" class="btn btn-lg surveyStartButton" data-role="none">Manage Questionnaire<span class="icon icon-btn-arrow"></span></a>
										<br />
										<a href="#" id="manage-questionnaire" class="btn btn-lg surveyStartButton" data-role="none">Reports<span class="icon icon-btn-arrow"></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			<!-- /section end //-->
			</div>
		<!-- /main content //-->
        </div>
      <!-- /row //-->
    </div>
  
  <!-- /container -->
  
  
  
  
    </article>
    <!-- /article -->
    

  
   <script src="js/jquery.js">
  </script>
  <!-- jQuery (necessary for JqueryMobile plugins) -->
  <script src="js/jquery-1.9.1.js">
  </script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="js/bootstrap.min.js">
  </script>
  <!-- jQuery (includes all JqueryMobile plugins) -->
  <script src="js/jquery.mobile-1.3.2.min.js">
  </script>
  
  
</body>
</html>