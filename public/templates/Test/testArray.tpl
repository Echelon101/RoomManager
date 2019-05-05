<html>
    <body>
        <table>
            <tr>
                <th>Test</th>
            </tr>
            {for test in tests}
                <tr>
                    <td>{$test.test1}</td>
                    <td>{$test.test2}</td>
                </tr>
            {endfor}
        </table>
    </body>
</html>