def app(environ, start_response):
    """Simplest possible application object"""
    get_data = environ['QUERY_STRING']
    new_data = ''
    for i in get_data:
        if (i == '&'):
            new_data += '\n'
        else:
            new_data += i
    status = '200 OK'
    response_headers = [
        ('Content-type', 'text/plain'),
        ('Content-Length', str(len(new_data)))
    ]
    start_response(status, response_headers)
    byte_data = bytes(new_data, 'utf-8')
    return iter([byte_data])