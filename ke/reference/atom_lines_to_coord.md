# Convert PDB formatted atom lines into a matrix

Generate a matrix containing coordinates in a set of PDB atom lines

## Usage

``` r
atom_lines_to_coord(atom_lines)
```

## Arguments

- atom_lines:

  character vector of ATOM lines

## Value

3xN matrix with a column for every atom

## Details

The column names in the resulting matrix correspond to columns 13
through 27 of the ATOM lines. The definitions of the PDB columns and
corresponding colnames columns are as follows:

|       |          |              |         |                                |
|-------|----------|--------------|---------|--------------------------------|
| PDB   | colnames | Data Type    | Field   | Definition                     |
| 13-16 | 1-4      | Atom         | name    | Atom name                      |
| 17    | 5        | Character    | altLoc  | Alternate location indicator   |
| 18-20 | 6-8      | Residue name | resName | Residue name                   |
| 22    | 10       | Character    | chainID | Chain identifier               |
| 23-26 | 11-4     | Integer      | resSeq  | Residue sequence number        |
| 27    | 15       | AChar        | iCode   | Code for insertion of residues |

See
<http://www.wwpdb.org/documentation/file-format-content/format33/sect9.html#ATOM>
for more information.
