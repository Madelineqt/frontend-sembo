<template>
  <div>
        <section id="list" class="slide-in-bottom">
          <div v-if="error">
            <b-alert show variant="danger">{{alert}}</b-alert>
          </div>
          <div class="row">
            <div class="col-12">
              <h1>Hotel ratings by country</h1>
              <div class="table" v-if="hotels.length">
                <table class="table table-striped">
                  <thead>
                    <tr>
                      <th v-for="field in fields" v-bind:key="field">
                        {{field}}
                      </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="hotel in hotels" v-bind:key="hotel.country">
                      <td>{{hotel.country}} <div v-bind:class="'flag flag-' + hotel.country.toLowerCase()"></div></td>
                      <td>{{hotel.average}}</td>
                      <td >
                        <span v-for="(hotelname, index) in hotel.top3" v-bind:key="hotelname">{{index + 1}}. {{hotelname}} <br></span>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
              <div class="alerts" v-if="!hotels.length">
                <b-spinner label="Spinning" v-if="!error"></b-spinner>
                <b-button v-on:click="getHotels" v-else variant="danger">Retry</b-button>
              </div>
            </div>
          </div>
        </section>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'List',
  data: () => ({
    error: false,
    alert: "",
    hotels: [],
    fields:["Country","Average score","Top 3 hotels"]
  }),
  mounted(){
    this.getHotels()
  },
  methods:{
    getHotels: async function(){
      this.reset()
      return axios.get(`${this.$protocol + this.$host}:${this.$port}/api/hotels`).then((response) => {
        console.log(response.data)
        this.hotels = response.data
        this.error = false
      }).catch((err) => {
        this.handleError(err)
      })
    },
    handleError: function(err){
      this.error = true
      this.alert = err
    },
    reset: function(){
      this.error = false,
      this.alert = ""
    }
  }
}
</script>
