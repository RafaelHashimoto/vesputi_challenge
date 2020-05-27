if Rails.env.test?
  Stop.create(
    [
      { stop_name: 'Parnell Square West, stop 2', stop_lat: '53.3522443611383', stop_lon:'-6.26372321891887' },
      { stop_name: 'Parnell Square West, stop 3', stop_lat: '53.3523085514325', stop_lon:'-6.26381074216825' },
      { stop_name: 'Parnell Square West, stop 4', stop_lat: '53.352574513185', stop_lon:'-6.26417548603797' },
      { stop_name: 'Parnell Square West, stop 6', stop_lat: '53.3527493357046', stop_lon:'-6.26445380396434' },
      { stop_name: 'Parnell Square West, stop 7', stop_lat: '53.3528409105784', stop_lon:'-6.26457026121749' },
      { stop_name: 'Parnell Square West, stop 8', stop_lat: '53.3532722714822', stop_lon:'-6.265183676574' },
      { stop_name: 'Parnell Square West, stop 10', stop_lat: '53.3533921036473', stop_lon:'-6.26538912389954' }
    ]
  )
end
