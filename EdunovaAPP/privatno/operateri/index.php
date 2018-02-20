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
							<th>Uloga</th>
							<th>Ime i prezime</th>
							<th>Email</th>
							<th>Akcija</th>
						</tr>
					</thead>
					<tbody>
						
					<?php 
					$izraz = $veza->prepare("select * from operater order by uloga, prezime, ime;");
					$izraz->execute();
					$rezultati = $izraz->fetchAll(PDO::FETCH_OBJ);
					foreach ($rezultati as $red):
					?>
						
						<tr>
							<td title="<?php echo $red->uloga ?>"><?php 
							
							if($red->uloga==="admin"){
								echo "<i style=\"color: #b74d4d\" title=\"Administrator\" class=\"fas fa-user-circle fa-3x\"></i>";
							}else{
								echo "<i  style=\"color: #b74d4d\" title=\"Operater\" class=\"fas fa-user fa-3x\"></i>";
							}
								
								
								?></td>
							<td><?php echo $red->ime . " " . $red->prezime; ?></td>
							<td><?php echo $red->email; ?></td>
							
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