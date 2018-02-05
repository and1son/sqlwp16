<?php include_once '../../konfiguracija.php'; 
provjeraOvlasti();
?>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <?php include_once '../../include/head.php'; ?>

  </head>
  <body>
    <div class="grid-container">
    	<?php include_once '../../include/zaglavlje.php'; ?>
      	<?php include_once '../../include/izbornik.php'; ?>
      	
      	<div class="grid-x grid-padding-x">
			<div class="large-12 cell">
				<table>
					<thead>
						<tr>
							<th>Oib</th>
							<th>Ime</th>
							<th>Prezime</th>
							<th>Spol</th>
						</tr>
					</thead>
					<tbody>
						
					<?php 
					$izraz = $veza->prepare("select * from osoba;");
					$izraz->execute();
					$rezultati = $izraz->fetchAll(PDO::FETCH_OBJ);
					foreach ($rezultati as $red):
					?>
						
						<tr>							
							<td><?php echo $red->oib; ?></td>
							<td><?php echo $red->ime; ?></td>
							<td><?php echo $red->prezime ?></td>

							<td title="<?php echo $red->spol; ?>"><?php
							if($red->spol==="1"){
								echo "<i style=\"color: #000000 \" title=\"Musko\" class=\"fas fa-male fa-2x\"></i>";
							}else{
								echo "<i style=\"color: #ff9980 \" title=\"Zensko\" class=\"fas fa-female fa-2x\"></i>";
							}
							?></td>
							<td>
								<a href="#"><i class="far fa-edit fa-2x"></i></a>
								<a href="#"><i class="far fa-trash-alt fa-2x"></i></a>  
							</td>
						</tr>
						
					<?php endforeach; ?>
						
					</tbody>
				</table>
				
			</div>
		</div>
		<?php include_once '../../include/podnozje.php'; ?>
		
      
    </div>

    <?php include_once '../../include/skripte.php'; ?>
  </body>
</html>
