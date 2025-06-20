# gt4cobol

Offers multiple static analyses for COBOL.

Includes:
- Parsers for COBOL, JCL and BMS sources
- Model for connecting Cobol, CICS, JCL, BMS and DB calls
- Multiple out of the box sample analyses including control flow between screens and code or overlapping variables

## Installation
Download [Glamorous Toolkit](https://gtoolkit.com) and load the code by executing this snippet:

```st
Metacello new
	repository: 'github://feenkcom/gt4cobol:main/src';
	baseline: 'GToolkit4Cobol';
	load.
#BaselineOfGToolkit4Cobol asClass loadLepiter
```
# License

See [LICENSE](LICENSE).
