<?php include_once '../../konfiguracija.php'; 
provjeraOvlasti();
?>
<!doctype html>
<html class="no-js" lang="en" dir="ltr">
  <head>
    <?php include_once '../../include/head.php'; ?>
    <style>
    	table tbody tr td:nth-child(2), 
    	table tbody tr td:nth-child(3), 
    	table tbody tr td:nth-child(4){
    		text-align: right;
    	}
    </style>
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
							<th>Naziv</th>
							<th>Cijena</th>
							<th>Upisnina</th>
							<th>Broja sati</th>
							<th>Akcija</th>
						</tr>
					</thead>
					<tbody>
						
					<?php 
					$format = new NumberFormatter("hr_HR",NumberFormatter::CURRENCY);
					$izraz = $veza->prepare("select * from smjer order by naziv;");
					$izraz->execute();
					$rezultati = $izraz->fetchAll(PDO::FETCH_OBJ);
					foreach ($rezultati as $red):
					?>
						
						<tr>
							<td><?php echo $red->naziv; ?></td>
							<td><?php echo $format->format($red->cijena); ?></td>
							<td><?php echo $format->format($red->upisnina); ?></td>
							<td><?php echo $red->brojsati; ?></td>
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
