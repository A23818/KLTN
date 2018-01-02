
			                  <!-- The Support -->
	     <div class="box-right">
                <div class="title tittle-box-right">
			        <h2> Hỗ trợ trực tuyến </h2>
			    </div>
			    <div class="content-box">
			        
			         <div class='support'>
                              <?php foreach ($supports as $row):?>
                              <strong><?php echo $row->name?> </strong>				
                              <!-- <a rel="nofollow" href="ymsgr:sendIM?<?php echo $row->yahoo?>">
                    		    <img  src="#">
                    	      </a> -->
                    	      
                    	      <p>
                    	         <img style="margin-bottom:-3px" src="<?php echo public_url()?>/site/images/phone.png"> <?php echo $row->phone?>
                    	      </p>
                    	      
                    		  <p>
                    			<a rel="nofollow" href="mailto:<?php echo $row->gmail?>">
                    			    <img style="margin-bottom:-3px" src="<?php echo public_url()?>/site/images/email.png"> Email: <?php echo substr($row->gmail, 0,12)?>...
                    		    </a>
                    		  </p>
                    		  <p>
                    			<a rel="nofollow" href="skype:<?php echo $row->skype?>">
                    			     <img style="margin-bottom:-3px" src="<?php echo public_url()?>/site/images/skype.png"> Skype: <?php echo $row->skype?>
                    			</a>
                    		</p>	
                    		<?php endforeach;?>
                    </div>	
			    </div>
          </div>
       <!-- End Support -->
       
         <!-- The news -->
	          <div class="box-right">
                <div class="title tittle-box-right">
			        <h2> Bài viết mới </h2>
			    </div>
			    <div class="content-box">
			       <ul class="news">
			            <?php foreach ($news_list as $row):?>
			            <li>
			                <a href="" title="<?php echo $row->title?> ">
			                <img src="<?php echo base_url('upload/news/'.$row->image_link)?>" style="width:50px" alt="<?php echo $row->title?> ">
			                <?php echo $row->title?>                        
			                </a>
	                     </li>
	                     <?php endforeach;?>
	                 </ul>
	    </div>
   </div>		<!-- End news -->
		
        <!-- The Ads -->
	       <div class="box-right">
                <div class="title tittle-box-right">
			        <h2> Quảng cáo </h2>
			    </div>
			    <div class="content-box">
			        <a href="">
					     <img src="<?php echo public_url() ?>/site/images/design.png">
					</a>
			    </div>
		   </div>
		<!-- End Ads -->
		
		 <!-- The Fanpage -->
	       <div class="box-right">
                <div class="title tittle-box-right">
			        <h2> Fanpage </h2>
			    </div>
			    <div class="content-box">			          
	                <iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FH%25E1%25BB%2587-th%25E1%25BB%2591ng-%25C4%2591i%25E1%25BB%2587n-m%25C3%25A1y-Hammond-Electric-741398622714616%2F%3Fmodal%3Dadmin_todo_tour&tabs=timeline&width=190&height=250&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId=885887508201184" width="190" height="250" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>   	
			    </div>
		   </div>
		<!-- End Fanpage -->
		
		 <!-- The Fanpage -->
	       <div class="box-right">
                <div class="title tittle-box-right">
			        <h2> Thống kê truy cập </h2>
			    </div>
			    <div class="content-box">
			        <center>
			       		<a href='https://www.hit-counts.com'><img height="30" src='https://www.hit-counts.com/counter.php?t=MTQyMTE0Mg==' border='' alt='Hit Counter'></a>
					</center>                
			    </div>
		   </div>
		<!-- End Fanpage -->
		

					  