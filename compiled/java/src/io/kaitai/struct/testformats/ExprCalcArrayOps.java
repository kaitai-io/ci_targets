// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;

public class ExprCalcArrayOps extends KaitaiStruct {
    public static ExprCalcArrayOps fromFile(String fileName) throws IOException {
        return new ExprCalcArrayOps(new ByteBufferKaitaiStream(fileName));
    }

    public ExprCalcArrayOps(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprCalcArrayOps(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprCalcArrayOps(KaitaiStream _io, KaitaiStruct _parent, ExprCalcArrayOps _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
    }
    private ArrayList<Double> doubleArray;
    public ArrayList<Double> doubleArray() {
        if (this.doubleArray != null)
            return this.doubleArray;
        this.doubleArray = new ArrayList<Double>(Arrays.asList(10.0, 25.0, 50.0, 100.0, 3.14159));
        return this.doubleArray;
    }
    private Integer intArraySize;
    public Integer intArraySize() {
        if (this.intArraySize != null)
            return this.intArraySize;
        int _tmp = (int) (intArray().size());
        this.intArraySize = _tmp;
        return this.intArraySize;
    }
    private Integer intArrayMax;
    public Integer intArrayMax() {
        if (this.intArrayMax != null)
            return this.intArrayMax;
        int _tmp = (int) (Collections.max(intArray()));
        this.intArrayMax = _tmp;
        return this.intArrayMax;
    }
    private Double doubleArrayMax;
    public Double doubleArrayMax() {
        if (this.doubleArrayMax != null)
            return this.doubleArrayMax;
        double _tmp = (double) (Collections.max(doubleArray()));
        this.doubleArrayMax = _tmp;
        return this.doubleArrayMax;
    }
    private String strArrayMax;
    public String strArrayMax() {
        if (this.strArrayMax != null)
            return this.strArrayMax;
        this.strArrayMax = Collections.max(strArray());
        return this.strArrayMax;
    }
    private String strArrayMin;
    public String strArrayMin() {
        if (this.strArrayMin != null)
            return this.strArrayMin;
        this.strArrayMin = Collections.min(strArray());
        return this.strArrayMin;
    }
    private Double doubleArrayMid;
    public Double doubleArrayMid() {
        if (this.doubleArrayMid != null)
            return this.doubleArrayMid;
        double _tmp = (double) (doubleArray().get((int) 1));
        this.doubleArrayMid = _tmp;
        return this.doubleArrayMid;
    }
    private ArrayList<String> strArray;
    public ArrayList<String> strArray() {
        if (this.strArray != null)
            return this.strArray;
        this.strArray = new ArrayList<String>(Arrays.asList("un", "deux", "trois", "quatre"));
        return this.strArray;
    }
    private Integer doubleArraySize;
    public Integer doubleArraySize() {
        if (this.doubleArraySize != null)
            return this.doubleArraySize;
        int _tmp = (int) (doubleArray().size());
        this.doubleArraySize = _tmp;
        return this.doubleArraySize;
    }
    private String strArrayFirst;
    public String strArrayFirst() {
        if (this.strArrayFirst != null)
            return this.strArrayFirst;
        this.strArrayFirst = strArray().get(0);
        return this.strArrayFirst;
    }
    private String strArrayLast;
    public String strArrayLast() {
        if (this.strArrayLast != null)
            return this.strArrayLast;
        this.strArrayLast = strArray().get(strArray().size() - 1);
        return this.strArrayLast;
    }
    private String strArrayMid;
    public String strArrayMid() {
        if (this.strArrayMid != null)
            return this.strArrayMid;
        this.strArrayMid = strArray().get((int) 1);
        return this.strArrayMid;
    }
    private Double doubleArrayLast;
    public Double doubleArrayLast() {
        if (this.doubleArrayLast != null)
            return this.doubleArrayLast;
        double _tmp = (double) (doubleArray().get(doubleArray().size() - 1));
        this.doubleArrayLast = _tmp;
        return this.doubleArrayLast;
    }
    private Integer intArrayMin;
    public Integer intArrayMin() {
        if (this.intArrayMin != null)
            return this.intArrayMin;
        int _tmp = (int) (Collections.min(intArray()));
        this.intArrayMin = _tmp;
        return this.intArrayMin;
    }
    private Integer strArraySize;
    public Integer strArraySize() {
        if (this.strArraySize != null)
            return this.strArraySize;
        int _tmp = (int) (strArray().size());
        this.strArraySize = _tmp;
        return this.strArraySize;
    }
    private Integer intArrayFirst;
    public Integer intArrayFirst() {
        if (this.intArrayFirst != null)
            return this.intArrayFirst;
        int _tmp = (int) (intArray().get(0));
        this.intArrayFirst = _tmp;
        return this.intArrayFirst;
    }
    private Double doubleArrayFirst;
    public Double doubleArrayFirst() {
        if (this.doubleArrayFirst != null)
            return this.doubleArrayFirst;
        double _tmp = (double) (doubleArray().get(0));
        this.doubleArrayFirst = _tmp;
        return this.doubleArrayFirst;
    }
    private Integer intArrayMid;
    public Integer intArrayMid() {
        if (this.intArrayMid != null)
            return this.intArrayMid;
        int _tmp = (int) (intArray().get((int) 1));
        this.intArrayMid = _tmp;
        return this.intArrayMid;
    }
    private Double doubleArrayMin;
    public Double doubleArrayMin() {
        if (this.doubleArrayMin != null)
            return this.doubleArrayMin;
        double _tmp = (double) (Collections.min(doubleArray()));
        this.doubleArrayMin = _tmp;
        return this.doubleArrayMin;
    }
    private ArrayList<Integer> intArray;
    public ArrayList<Integer> intArray() {
        if (this.intArray != null)
            return this.intArray;
        this.intArray = new ArrayList<Integer>(Arrays.asList(10, 25, 50, 100, 200, 500, 1000));
        return this.intArray;
    }
    private Integer intArrayLast;
    public Integer intArrayLast() {
        if (this.intArrayLast != null)
            return this.intArrayLast;
        int _tmp = (int) (intArray().get(intArray().size() - 1));
        this.intArrayLast = _tmp;
        return this.intArrayLast;
    }
    private ExprCalcArrayOps _root;
    private KaitaiStruct _parent;
    public ExprCalcArrayOps _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
