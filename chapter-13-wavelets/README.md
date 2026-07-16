# Chapter 13. Wavelets

## 1. Chapter Goal

This chapter introduces wavelets and the continuous wavelet transform
for analyzing nonstationary signals.

## 2. What Is a Wavelet?

A wavelet is a localized oscillatory function.

The textbook introduces two basic properties:

1. The integral of the wavelet is zero.
2. The wavelet has finite energy and is usually normalized.

## 3. Continuous Wavelet Transform

CWT compares a signal with scaled and translated versions of a
mother wavelet.

- Small scale: compressed wavelet, relatively high frequency
- Large scale: expanded wavelet, relatively low frequency
- Translation: movement of the wavelet along the time axis

## 4. Key Interpretation

A CWT coefficient represents how similar the signal is to a particular
scaled wavelet at a particular time.

The scalogram visualizes the magnitude or power of these coefficients
over time and frequency.

## 5. What I Learned

Before studying this chapter, I regarded CWT mainly as a method for
drawing a time-frequency image.

I now understand that CWT repeatedly compares a signal with scaled
and shifted wavelets.

Scale is related to frequency, but scale itself is not identical to
frequency.

## 6. Remaining Questions

- How is wavelet scale converted into frequency?
- How does the choice of mother wavelet affect the result?
- How is CWT different from STFT in actual MATLAB results?
- What are edge effects in a scalogram?

## Reference

Wallisch, P. et al. (2014).
*MATLAB for Neuroscientists: An Introduction to Scientific Computing
in MATLAB*, 2nd Edition, Chapter 13.
