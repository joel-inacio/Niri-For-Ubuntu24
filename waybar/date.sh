#!/bin/sh

case "$(date +%u)" in
  1) dia="Seg" ;; 2) dia="Ter" ;; 3) dia="Qua" ;;
  4) dia="Qui" ;; 5) dia="Sex" ;; 6) dia="Sáb" ;; 7) dia="Dom" ;;
esac

case "$(date +%m)" in
  01) mes="janeiro" ;; 02) mes="fevereiro" ;; 03) mes="março" ;;
  04) mes="abril" ;; 05) mes="maio" ;; 06) mes="junho" ;;
  07) mes="julho" ;; 08) mes="agosto" ;; 09) mes="setembro" ;;
  10) mes="outubro" ;; 11) mes="novembro" ;; 12) mes="dezembro" ;;
esac

printf '%s, %s de %s de %s, %s\n' "$dia" "$(date +%-d)" "$mes" "$(date +%Y)" "$(date +%H:%M)"
