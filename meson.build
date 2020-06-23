project('JenkinsTest', ['d'])

src = ['test_lib.d', 'main.d']

executable('Main', src, install: true)

test('test_lib', executable('TestLib', 'test_lib.d', d_unittest: true, d_args: ['-main']))