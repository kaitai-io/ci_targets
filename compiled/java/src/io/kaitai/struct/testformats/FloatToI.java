// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class FloatToI extends KaitaiStruct {
    public static FloatToI fromFile(String fileName) throws IOException {
        return new FloatToI(new KaitaiStream(fileName));
    }

    public FloatToI(KaitaiStream _io) {
        this(_io, null, null);
    }

    public FloatToI(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public FloatToI(KaitaiStream _io, KaitaiStruct _parent, FloatToI _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.singleValue = this._io.readF4le();
        this.doubleValue = this._io.readF8le();
    }
    private Integer float2I;
    public Integer float2I() {
        if (this.float2I != null)
            return this.float2I;
        int _tmp = (int) ((int) (calcFloat2() + 0));
        this.float2I = _tmp;
        return this.float2I;
    }
    private Double calcFloat1;
    public Double calcFloat1() {
        if (this.calcFloat1 != null)
            return this.calcFloat1;
        double _tmp = (double) (1.234);
        this.calcFloat1 = _tmp;
        return this.calcFloat1;
    }
    private Integer float4I;
    public Integer float4I() {
        if (this.float4I != null)
            return this.float4I;
        int _tmp = (int) ((int) (calcFloat4() + 0));
        this.float4I = _tmp;
        return this.float4I;
    }
    private Double calcFloat3;
    public Double calcFloat3() {
        if (this.calcFloat3 != null)
            return this.calcFloat3;
        double _tmp = (double) (1.9);
        this.calcFloat3 = _tmp;
        return this.calcFloat3;
    }
    private Double calcFloat2;
    public Double calcFloat2() {
        if (this.calcFloat2 != null)
            return this.calcFloat2;
        double _tmp = (double) (1.5);
        this.calcFloat2 = _tmp;
        return this.calcFloat2;
    }
    private Integer float1I;
    public Integer float1I() {
        if (this.float1I != null)
            return this.float1I;
        int _tmp = (int) ((int) (calcFloat1() + 0));
        this.float1I = _tmp;
        return this.float1I;
    }
    private Integer doubleI;
    public Integer doubleI() {
        if (this.doubleI != null)
            return this.doubleI;
        int _tmp = (int) ((int) (doubleValue() + 0));
        this.doubleI = _tmp;
        return this.doubleI;
    }
    private Integer float3I;
    public Integer float3I() {
        if (this.float3I != null)
            return this.float3I;
        int _tmp = (int) ((int) (calcFloat3() + 0));
        this.float3I = _tmp;
        return this.float3I;
    }
    private Integer singleI;
    public Integer singleI() {
        if (this.singleI != null)
            return this.singleI;
        int _tmp = (int) ((int) (singleValue() + 0));
        this.singleI = _tmp;
        return this.singleI;
    }
    private Double calcFloat4;
    public Double calcFloat4() {
        if (this.calcFloat4 != null)
            return this.calcFloat4;
        double _tmp = (double) (-2.7);
        this.calcFloat4 = _tmp;
        return this.calcFloat4;
    }
    private float singleValue;
    private double doubleValue;
    private FloatToI _root;
    private KaitaiStruct _parent;
    public float singleValue() { return singleValue; }
    public double doubleValue() { return doubleValue; }
    public FloatToI _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
