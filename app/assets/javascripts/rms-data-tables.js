// Call the dataTables jQuery plugin
$(document).ready(function() {
  $('#dataTable').DataTable();

  // Declare customer table
  var customertable = $('#customertable').DataTable( {
    paging: true,
    "order": [[ 5, 'asc' ]]
  } );

  // Declare employee table
  var employeetable = $('#employeetable').DataTable( {
     paging: true,
     "order": [[ 4, 'asc' ]]
  } );

  // Declare order table
  var ordertable = $('#ordertable').DataTable( {
      paging: true,
      "order": [[ 3, 'desc' ]]
  } );

  // Declare product table
  var producttable = $('#producttable').DataTable( {
      paging: true,
      "order": [[ 0, 'asc' ]]
  } );

  // Declare shipping table
  var shippingtable = $('#shippingtable').DataTable( {
      paging: true,
      "order": [[ 5, 'desc' ]]
  } );

  // Declare vendor table
  var vendortable = $('#vendortable').DataTable( {
      "paging": true,
      "order": [[ 3, 'asc' ]]
  } );

  // Declare report1-tables
  var report1table7d = $('#report1table7d').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 2, 'desc' ]]
  } );
  var report1table30d = $('#report1table30d').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 2, 'desc' ]]
  } );
  var report1table3m = $('#report1table3m').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 2, 'desc' ]]
  } );
  var report1table6m = $('#report1table6m').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 2, 'desc' ]]
  } );
  var report1table1y = $('#report1table1y').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 2, 'desc' ]]
  } );

  // Declare report2table
  var report2table = $('#report2table').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 2, 'desc' ]]
  } );

  // Declare report3table
  var report3table = $('#report3table').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 0, 'asc' ]]
  } );

  // Declare report4table
  var report4table = $('#report4table').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );

  // Declare report5table
  var report5table = $('#report5table').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );

  // Declare report6table
  var report6table = $('#report6table').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );

  // Declare report7table
  var report7table = $('#report7table').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );

  // Declare report8tables
  var report8table7d = $('#report8table7d').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report8table30d = $('#report8table30d').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report8table3m = $('#report8table3m').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report8table6m = $('#report8table6m').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report8table1y = $('#report8table1y').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );

  // Declare report9tables
  var report9table7d = $('#report9table7d').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report9table30d = $('#report9table30d').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report9table3m = $('#report9table3m').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report9table6m = $('#report9table6m').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report9table1y = $('#report9table1y').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );

  // Declare report10tables
  var report10table7d = $('#report10table7d').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report10table30d = $('#report10table30d').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report10table3m = $('#report10table3m').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report10table6m = $('#report10table6m').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );
  var report10table1y = $('#report10table1y').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );

  // Declare report11table
  var report11table = $('#report11table').DataTable( {
        dom: 'Bflrtip',
        "paging": true,
        "order": [[ 0, 'asc' ]]
      } );

  // Declare report12table
  var report12table = $('#report12table').DataTable( {
    dom: 'Bflrtip',
    "paging": true,
    "order": [[ 1, 'desc' ]]
  } );

  // Set all buttons as active on page load
  $('a.toggle-vis').addClass('active')

  // On click hide column
  $('a.toggle-vis').on( 'click', function (e) {

    // Get the customertable column API object
    var customertablecolumn = customertable.column( $(this).attr('data-column') );

    // Toggle the customertable visibility
    customertablecolumn.visible( ! customertablecolumn.visible() );

    // Get the employeetable column API object
    var employeetablecolumn = employeetable.column( $(this).attr('data-column') );

    // Toggle the employeetable visibility
    employeetablecolumn.visible( ! employeetablecolumn.visible() );

    // Get the ordertable column API object
    var ordertablecolumn = ordertable.column( $(this).attr('data-column') );

    // Toggle the ordertable visibility
    ordertablecolumn.visible( ! ordertablecolumn.visible() );

    // Get the producttable column API object
    var producttablecolumn = producttable.column( $(this).attr('data-column') );

    // Toggle the producttable visibility
    producttablecolumn.visible( ! producttablecolumn.visible() );

    // Get the shippingtable column API object
    var shippingtablecolumn = shippingtable.column( $(this).attr('data-column') );

    // Toggle the shippingtable visibility
    shippingtablecolumn.visible( ! shippingtablecolumn.visible() );

    // Get the vendortable column API object
    var vendortablecolumn = vendortable.column( $(this).attr('data-column') );

    // Toggle the customertable visibility
    vendortablecolumn.visible( ! vendortablecolumn.visible() );

  } );

  // Show all columns
  $('a.show-all-col').on( 'click', function (e) {

    // Set all customertable columns to visible
    customertable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 ] ).visible( true, false );

    // adjust customertable column sizing and redraw
    customertable.columns.adjust().draw( false );

    // Set all employeetable columns to visible
    employeetable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ] ).visible( true, false );

    // adjust employeetable column sizing and redraw
    employeetable.columns.adjust().draw( false );

    // Set all ordertable columns to visible
    ordertable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] ).visible( true, false );

    // adjust ordertable column sizing and redraw
    ordertable.columns.adjust().draw( false );

    // adjust producttable column sizing and redraw
    producttable.columns.adjust().draw( false );

    // Set all shippingtable columns to visible
    shippingtable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13] ).visible( true, false );

    // adjust shippingtable column sizing and redraw
    shippingtable.columns.adjust().draw( false );

    // Set all vendortable columns to visible
    vendortable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17 ] ).visible( true, false );

    // adjust vendortable column sizing and redraw
    vendortable.columns.adjust().draw( false );

    // Remove inactive class from individual column buttons
    $('a.toggle-vis').removeClass('inactive')

    // Add active class to individual column buttons
    $('a.toggle-vis').addClass('active')

  } );

  // Hide all columns
  $('a.hide-all-col').on( 'click', function (e) {

    // Set all customertable columns to not visible
    customertable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 ] ).visible( false, false );

    // adjust customertable column sizing and redraw
    customertable.columns.adjust().draw( false );

    // Set all employeetable columns to not visible
    employeetable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13 ] ).visible( false, false );

    // adjust employeetable column sizing and redraw
    employeetable.columns.adjust().draw( false );

    // Set all ordertable columns to not visible
    ordertable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10] ).visible( false, false );

    // adjust ordertable column sizing and redraw
    ordertable.columns.adjust().draw( false );

    // Set all shippingtable columns to not visible
    shippingtable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13] ).visible( false, false );

    // adjust shippingtable column sizing and redraw
    shippingtable.columns.adjust().draw( false );

    // Set all vendortable columns to not visible
    vendortable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17 ] ).visible( false, false );

    // adjust vendortable column sizing and redraw
    vendortable.columns.adjust().draw( false );

    // Remove active class from individual column buttons
    $('a.toggle-vis').removeClass('active')

    // Add inactive class to individual column buttons
    $('a.toggle-vis').addClass('inactive')

  } );

  // Show only customer contact info
  $('a.show-customer-contact').on( 'click', function (e) {

    // Set all columns to visible
    customertable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19 ] ).visible( true, false );

    // Set columns that are not contact info to not visible
    customertable.columns( [ 0, 1, 2, 6, 14, 15, 16, 17, 18, 19 ] ).visible( false, false );

    // adjust column sizing and redraw
    customertable.columns.adjust().draw( false );

    // Remove active class from individual column buttons
    $('a.toggle-vis').removeClass('active')

    // Add active class to customer contact buttons
    $('a.customer-contact').addClass('active')

  } );

  // Show only customer info
  $('a.show-customer-info').on( 'click', function (e) {

    // Set all columns to visible
    customertable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18 ] ).visible( true, false );

    // Set columns that are not customer info to not visible
    customertable.columns( [ 0, 1, 2, 8, 9, 10, 11, 12, 13 ] ).visible( false, false );

    // adjust column sizing and redraw
    customertable.columns.adjust().draw( false );

    // Remove active class from individual column buttons
    $('a.toggle-vis').removeClass('active')

    // Add active class to customer info buttons
    $('a.customer-info').addClass('active')

  } );

  // Show only vendor contact info
  $('a.show-vendor-contact').on( 'click', function (e) {

    // Set all columns to visible
    vendortable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17 ] ).visible( true, false );

    // Set columns that are not vendor contact info to not visible
    vendortable.columns( [ 0, 1, 2, 5, 13, 14, 15, 16, 17 ] ).visible( false, false );

    // adjust column sizing and redraw
    vendortable.columns.adjust().draw( false );

    // Remove active class from individual column buttons
    $('a.toggle-vis').removeClass('active')

    // Add active class to vendor contact buttons
    $('a.vendor-contact').addClass('active')

  } );

  // Show only vendor info
  $('a.show-vendor-info').on( 'click', function (e) {

    // Set all columns to visible
    vendortable.columns( [ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17 ] ).visible( true, false );

    // Set columns that are not vendor info to not visible
    vendortable.columns( [ 0, 1, 2, 6, 7, 8, 9, 10, 11, 12 ] ).visible( false, false );

    // adjust column sizing and redraw
    vendortable.columns.adjust().draw( false );

    // Remove active class from individual column buttons
    $('a.toggle-vis').removeClass('active')

    // Add active class to vendor info buttons
    $('a.vendor-info').addClass('active')

  } );
});
