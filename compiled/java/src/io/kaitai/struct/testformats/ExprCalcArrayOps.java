// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.List;
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

    public void _fetchInstances() {
    }
    public List<Double> doubleArray() {
        if (this.doubleArray != null)
            return this.doubleArray;
        this.doubleArray = new ArrayList<Double>(Arrays.asList(10.0, 25.0, 50.0, 100.0, 3.14159));
        return this.doubleArray;
    }
    public Double doubleArrayFirst() {
        if (this.doubleArrayFirst != null)
            return this.doubleArrayFirst;
        this.doubleArrayFirst = ((Number) (doubleArray().get(0))).doubleValue();
        return this.doubleArrayFirst;
    }
    public Double doubleArrayLast() {
        if (this.doubleArrayLast != null)
            return this.doubleArrayLast;
        this.doubleArrayLast = ((Number) (doubleArray().get(doubleArray().size() - 1))).doubleValue();
        return this.doubleArrayLast;
    }
    public Double doubleArrayMax() {
        if (this.doubleArrayMax != null)
            return this.doubleArrayMax;
        this.doubleArrayMax = ((Number) (Collections.max(doubleArray()))).doubleValue();
        return this.doubleArrayMax;
    }
    public Double doubleArrayMid() {
        if (this.doubleArrayMid != null)
            return this.doubleArrayMid;
        this.doubleArrayMid = ((Number) (doubleArray().get(((int) 1)))).doubleValue();
        return this.doubleArrayMid;
    }
    public Double doubleArrayMin() {
        if (this.doubleArrayMin != null)
            return this.doubleArrayMin;
        this.doubleArrayMin = ((Number) (Collections.min(doubleArray()))).doubleValue();
        return this.doubleArrayMin;
    }
    public Integer doubleArraySize() {
        if (this.doubleArraySize != null)
            return this.doubleArraySize;
        this.doubleArraySize = ((Number) (doubleArray().size())).intValue();
        return this.doubleArraySize;
    }
    public List<Integer> intArray() {
        if (this.intArray != null)
            return this.intArray;
        this.intArray = new ArrayList<Integer>(Arrays.asList(10, 25, 50, 100, 200, 500, 1000));
        return this.intArray;
    }
    public Integer intArrayFirst() {
        if (this.intArrayFirst != null)
            return this.intArrayFirst;
        this.intArrayFirst = ((Number) (intArray().get(0))).intValue();
        return this.intArrayFirst;
    }
    public Integer intArrayLast() {
        if (this.intArrayLast != null)
            return this.intArrayLast;
        this.intArrayLast = ((Number) (intArray().get(intArray().size() - 1))).intValue();
        return this.intArrayLast;
    }
    public Integer intArrayMax() {
        if (this.intArrayMax != null)
            return this.intArrayMax;
        this.intArrayMax = ((Number) (Collections.max(intArray()))).intValue();
        return this.intArrayMax;
    }
    public Integer intArrayMid() {
        if (this.intArrayMid != null)
            return this.intArrayMid;
        this.intArrayMid = ((Number) (intArray().get(((int) 1)))).intValue();
        return this.intArrayMid;
    }
    public Integer intArrayMin() {
        if (this.intArrayMin != null)
            return this.intArrayMin;
        this.intArrayMin = ((Number) (Collections.min(intArray()))).intValue();
        return this.intArrayMin;
    }
    public Integer intArraySize() {
        if (this.intArraySize != null)
            return this.intArraySize;
        this.intArraySize = ((Number) (intArray().size())).intValue();
        return this.intArraySize;
    }
    public List<String> strArray() {
        if (this.strArray != null)
            return this.strArray;
        this.strArray = new ArrayList<String>(Arrays.asList("un", "deux", "trois", "quatre"));
        return this.strArray;
    }
    public String strArrayFirst() {
        if (this.strArrayFirst != null)
            return this.strArrayFirst;
        this.strArrayFirst = strArray().get(0);
        return this.strArrayFirst;
    }
    public String strArrayLast() {
        if (this.strArrayLast != null)
            return this.strArrayLast;
        this.strArrayLast = strArray().get(strArray().size() - 1);
        return this.strArrayLast;
    }
    public String strArrayMax() {
        if (this.strArrayMax != null)
            return this.strArrayMax;
        this.strArrayMax = Collections.max(strArray());
        return this.strArrayMax;
    }
    public String strArrayMid() {
        if (this.strArrayMid != null)
            return this.strArrayMid;
        this.strArrayMid = strArray().get(((int) 1));
        return this.strArrayMid;
    }
    public String strArrayMin() {
        if (this.strArrayMin != null)
            return this.strArrayMin;
        this.strArrayMin = Collections.min(strArray());
        return this.strArrayMin;
    }
    public Integer strArraySize() {
        if (this.strArraySize != null)
            return this.strArraySize;
        this.strArraySize = ((Number) (strArray().size())).intValue();
        return this.strArraySize;
    }
    public ExprCalcArrayOps _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<Double> doubleArray;
    private Double doubleArrayFirst;
    private Double doubleArrayLast;
    private Double doubleArrayMax;
    private Double doubleArrayMid;
    private Double doubleArrayMin;
    private Integer doubleArraySize;
    private List<Integer> intArray;
    private Integer intArrayFirst;
    private Integer intArrayLast;
    private Integer intArrayMax;
    private Integer intArrayMid;
    private Integer intArrayMin;
    private Integer intArraySize;
    private List<String> strArray;
    private String strArrayFirst;
    private String strArrayLast;
    private String strArrayMax;
    private String strArrayMid;
    private String strArrayMin;
    private Integer strArraySize;
    private ExprCalcArrayOps _root;
    private KaitaiStruct _parent;
}
