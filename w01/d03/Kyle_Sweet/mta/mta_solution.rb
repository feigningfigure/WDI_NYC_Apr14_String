require_relative 'helper_functions'

# global hash of arrays of strings of station names
$trains = {
  :n => ["N Line: Times Square", "N Line: 34th Street", "N Line: 28th Street", "N Line: 23rd Street", "N Line: Union Square"],
  :l => ["L Line: 8th Ave", "L Line: 6th Ave", "L Line: Union Square", "L Line: 3rd Ave", "L Line: 1st Ave"],
  :six => ["6 Line: Grand Central", "6 Line: 33rd Street", "6 Line: 28th Street", "6 Line: 23rd Street", "6 Line: Union Square", "6 Line: Astor Place"]
}

start_stop_prompt
