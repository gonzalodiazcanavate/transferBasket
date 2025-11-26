/**
 * @file Gráfica que muestra historial de salarios/valores de un jugador
 */
// eslint-disable-next-line no-unused-vars
import React from "react";
import {Area, AreaChart, CartesianGrid, Tooltip, XAxis, YAxis} from "recharts";
import {createPayload} from "../helpers/valuesSalariesChart.helper";
import {Box, Typography} from "@mui/material";


const ValuesSalariesChart = ({isAnimationActive = true, values, title}) => {
  const data = values ? createPayload(values) : [{date: "", value: 0}]
  console.log(data)
  return (
    <Box sx={{display: "flex", flexDirection: "column", gap: 3}}>
      <Typography variant="h6">{title}</Typography>
      <AreaChart
        style={{width: "100%", maxWidth: "700px", maxHeight: "70vh", aspectRatio: 1.618}}
        responsive
        data={data}
        margin={{top: 10, right: 0, left: 0, bottom: 0}}
      >
        <CartesianGrid strokeDasharray="33" />
        <XAxis dataKey="date"  width="auto"/>
        <YAxis width="auto" />
        <Tooltip />
        <Area
          type="linear"
          dataKey="value"
          stroke="#8884d8"
          strokeWidth={2}
          dot={{r: 4}}
          activeDot={{r: 8}}
          fillOpacity={0.5}
          fill="#8884d8"
          isAnimationActive={isAnimationActive}
        />
      </AreaChart>
    </Box>
    
  );
}

export default ValuesSalariesChart;