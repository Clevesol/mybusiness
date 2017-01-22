<%-- 
    Document   : grn
    Created on : Jan 21, 2017, 10:59:30 PM
    Author     : Selvadurai Handeeban <s.handeeban@gmail.com>
--%>


<script>
    $("#select2-option").select2();
    $('#expdate').datepicker();
</script>


<div class="col-sm-12">
    <section class="panel panel-default">
        <header class="panel-heading font-bold"> 

            Good Recieving Note
        </header>
        <div class="panel-body">
            <form class="form-inline" role="form">
                <div class="form-group">

                    <div   class="form-group">
                        <label style="padding-top: 8px" class="col-sm-2 control-label">Customer&nbsp;</label>
                        <div class="col-sm-10">
                            <!--<div class="m-b">-->
                            <select id="select2-option" style="width:260px;padding-top: 3px">
                                <optgroup label="Perera And Sons">
                                    <option value="AK">Saman P</option>
                                    <option value="HI">Liyenage Saman</option>
                                </optgroup>
                                <optgroup label="David Peiris">
                                    <option value="CA">Samson E</option>
                                    <option value="NV">Tehan Ratnayake</option>
                                    <option value="OR">Wimala K</option>
                                    <option value="WA">Ranasinghe C</option>
                                </optgroup>
                                <optgroup label="Mountain Time">
                                    <option value="AZ">Chathuranga L</option>
                                    <option value="CO">Colorado</option>
                                    <option value="ID">Idaho</option>
                                    <option value="MT">Montana</option>
                                    <option value="NE">Nebraska</option>
                                    <option value="NM">New Mexico</option>
                                    <option value="ND">North Dakota</option>
                                    <option value="UT">Utah</option>
                                    <option value="WY">Wyoming</option>
                                </optgroup>
                                <optgroup label="Central Time Zone">
                                    <option value="AL">Alabama</option>
                                    <option value="AR">Arkansas</option>
                                    <option value="IL">Illinois</option>
                                    <option value="IA">Iowa</option>
                                    <option value="KS">Kansas</option>
                                    <option value="KY">Kentucky</option>
                                    <option value="LA">Louisiana</option>
                                    <option value="MN">Minnesota</option>
                                    <option value="MS">Mississippi</option>
                                    <option value="MO">Missouri</option>
                                    <option value="OK">Oklahoma</option>
                                    <option value="SD">South Dakota</option>
                                    <option value="TX">Texas</option>
                                    <option value="TN">Tennessee</option>
                                    <option value="WI">Wisconsin</option>
                                </optgroup>
                                <optgroup label="Eastern Time Zone">
                                    <option value="CT">Connecticut</option>
                                    <option value="DE">Delaware</option>
                                    <option value="FL">Florida</option>
                                    <option value="GA">Georgia</option>
                                    <option value="IN">Indiana</option>
                                    <option value="ME">Maine</option>
                                    <option value="MD">Maryland</option>
                                    <option value="MA">Massachusetts</option>
                                    <option value="MI">Michigan</option>
                                    <option value="NH">New Hampshire</option><option value="NJ">New Jersey</option>
                                    <option value="NY">New York</option>
                                    <option value="NC">North Carolina</option>
                                    <option value="OH">Ohio</option>
                                    <option value="PA">Pennsylvania</option><option value="RI">Rhode Island</option><option value="SC">South Carolina</option>
                                    <option value="VT">Vermont</option><option value="VA">Virginia</option>
                                    <option value="WV">West Virginia</option>
                                </optgroup>
                            </select>
                            <!--</div>-->
                        </div>
                    </div>

                    <!--v<label class="sr-only" for="exampleInputEmail2">Customer</label>
                    <input type="text" class="form-control" id="grnCstmr" placeholder="Enter Customer Name"> -->
                </div>
                <div class="form-group">
                    <label class="sr-only" for="exampleInputPassword2">Expected Date</label>
                    <input type="date" class="form-control" id="expdate" placeholder="Date">
                </div>
                <div class="pull-right">
                    <button type="submit" class="btn btn-default">Cancel</button>
                    <a href="#modal-form" class="btn btn-success" data-toggle="modal">Save</a></div>
            </form>                  
        </div>
    </section>

</div>


<section class="vbox">          
    <section class="scrollable padder">
        <div class="col-sm-12">
            <section class="panel panel-default">
                <header class="panel-heading font-bold pull-none-xs"> 
                    <p>Items to be Ordered <span class="pull-right"><button class="btn btn-default">Add</button></span></p>
                </header>
                <div class="panel-body">
                    <table class="table table-striped m-b-none">
                        <thead>
                            <tr>
                                <th width="20"><input type="checkbox"></th>
                                <th width="20"></th>
                                <th class="th-sortable" data-toggle="class">Description
                                    <span class="th-sort">
                                        <i class="fa fa-sort-down text"></i>
                                        <i class="fa fa-sort-up text-active"></i>
                                        <i class="fa fa-sort"></i>
                                    </span>
                                </th>
                                <th>Specification</th>
                                <th>Price</th>
                                <th>extra</th>
                                <th width="30"></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Diamond Hole Saw</td>
                                <td>25 mm</td>
                                <td>1460</td> 
                                <td>Glass and Ceramic</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Diamond Hole Saw</td>
                                <td>25 mm</td>
                                <td>1460</td> 
                                <td>Glass and Ceramic</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>


                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Bench Grinder</td>
                                <td>6"</td>
                                <td>1460</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>


                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Bench Grinder</td>
                                <td>8"</td>
                                <td>7650</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Bench Grinder</td>
                                <td>8" sp</td>
                                <td>10100</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>


                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Welding Machine</td>
                                <td>BX6 250</td>
                                <td>14950</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Welding Machine</td>
                                <td>BX6 300</td>
                                <td>16750</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Welding Machine</td>
                                <td>BX6 400</td>
                                <td>19800</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Wood Lath</td>
                                <td>Wood lath</td>
                                <td>19800</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>


                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Comperror Hose</td>
                                <td>100m</td>
                                <td>7950</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Comperror Hose</td>
                                <td>20m</td>
                                <td>1580</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>


                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Comperror Hose</td>
                                <td>10m</td>
                                <td>790</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Masonary Drill Bit-Sand Blast Finishing</td>
                                <td>6*150</td>
                                <td>88</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Masonary Drill Bit-Sand Blast Finishing</td>
                                <td>8*200</td>
                                <td>160</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Masonary Drill Bit-Sand Blast Finishing</td>
                                <td>10*200</td>
                                <td>175</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>


                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Masonary Drill Bit-Sand Blast Finishing</td>
                                <td>12*200</td>
                                <td>225</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>


                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Masonary Drill Bit-Sand Blast Finishing</td>
                                <td>14*200</td>
                                <td>280</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Masonary Drill Bit-Sand Blast Finishing</td>
                                <td>16*250</td>
                                <td>225</td> 
                                <td>N/A</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>

                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Masonary Drill Bit-Sand Blast Finishing</td>
                                <td>14*250</td>
                                <td>380</td> 
                                <td>chisel</td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>



                            <tr>
                                <td><input type="checkbox" name="post[]" value="2"></td>
                                <td><a href="#modal" data-toggle="modal"><i class="fa fa-search-plus"></i></a></td>
                                <td>Masonary Drill Bit-Sand Blast Finishing</td>
                                <td>14*250</td>
                                <td>380</td> 
                                <td></td>
                                <td>
                                    <a href="#" class="active" data-toggle="class"><i class="fa fa-check text-success text-active"></i><i class="fa fa-times text-danger text"></i></a>
                                </td>
                            </tr>















                        </tbody>
                    </table>
                </div>
            </section>
        </div>

    </section>

</section>


