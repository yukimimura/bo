$( function() {
	$( window ).on( 'load resize', function() {
		var wh = $( '#hoge' ).height();
		var mh = $( '#main' ).height();
		wh = ( wh > mh ) ? mh : wh;
		var sh = mh - wh;
		$( '#main' ).height( wh + 'px' ).scrollTop( sh );
	} );
} );