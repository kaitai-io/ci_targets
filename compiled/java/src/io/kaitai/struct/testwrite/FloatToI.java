// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class FloatToI extends KaitaiStruct.ReadWrite {
    public static FloatToI fromFile(String fileName) throws IOException {
        return new FloatToI(new ByteBufferKaitaiStream(fileName));
    }
    public FloatToI() {
        this(null, null, null);
    }

    public FloatToI(KaitaiStream _io) {
        this(_io, null, null);
    }

    public FloatToI(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public FloatToI(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, FloatToI _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.singleValue = this._io.readF4le();
        this.doubleValue = this._io.readF8le();
        if (true) {
            this.singleValueIf = this._io.readF4be();
        }
        if (true) {
            this.doubleValueIf = this._io.readF8be();
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        if (true) {
        }
        if (true) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeF4le(this.singleValue);
        this._io.writeF8le(this.doubleValue);
        if (true) {
            this._io.writeF4be(this.singleValueIf);
        }
        if (true) {
            this._io.writeF8be(this.doubleValueIf);
        }
    }

    public void _check() {
        if (true) {
        }
        if (true) {
        }
        _dirty = false;
    }
    public Double calcFloat1() {
        if (this.calcFloat1 != null)
            return this.calcFloat1;
        this.calcFloat1 = ((double) 1.234);
        return this.calcFloat1;
    }
    public void _invalidateCalcFloat1() { this.calcFloat1 = null; }
    public Double calcFloat2() {
        if (this.calcFloat2 != null)
            return this.calcFloat2;
        this.calcFloat2 = ((double) 1.5);
        return this.calcFloat2;
    }
    public void _invalidateCalcFloat2() { this.calcFloat2 = null; }
    public Double calcFloat3() {
        if (this.calcFloat3 != null)
            return this.calcFloat3;
        this.calcFloat3 = ((double) 1.9);
        return this.calcFloat3;
    }
    public void _invalidateCalcFloat3() { this.calcFloat3 = null; }
    public Double calcFloat4() {
        if (this.calcFloat4 != null)
            return this.calcFloat4;
        this.calcFloat4 = ((Number) (-2.7)).doubleValue();
        return this.calcFloat4;
    }
    public void _invalidateCalcFloat4() { this.calcFloat4 = null; }
    public Double calcIf() {
        if (this.calcIf != null)
            return this.calcIf;
        this.calcIf = ((double) 13.9);
        return this.calcIf;
    }
    public void _invalidateCalcIf() { this.calcIf = null; }
    public Integer calcIfI() {
        if (this.calcIfI != null)
            return this.calcIfI;
        this.calcIfI = ((Number) (((Number) (calcIf())).intValue())).intValue();
        return this.calcIfI;
    }
    public void _invalidateCalcIfI() { this.calcIfI = null; }
    public Integer doubleI() {
        if (this.doubleI != null)
            return this.doubleI;
        this.doubleI = ((Number) (((Number) (doubleValue())).intValue())).intValue();
        return this.doubleI;
    }
    public void _invalidateDoubleI() { this.doubleI = null; }
    public Integer doubleIfI() {
        if (this.doubleIfI != null)
            return this.doubleIfI;
        this.doubleIfI = ((Number) (((Number) (doubleValueIf())).intValue())).intValue();
        return this.doubleIfI;
    }
    public void _invalidateDoubleIfI() { this.doubleIfI = null; }
    public Integer float1I() {
        if (this.float1I != null)
            return this.float1I;
        this.float1I = ((Number) (((Number) (calcFloat1())).intValue())).intValue();
        return this.float1I;
    }
    public void _invalidateFloat1I() { this.float1I = null; }
    public Integer float2I() {
        if (this.float2I != null)
            return this.float2I;
        this.float2I = ((Number) (((Number) (calcFloat2())).intValue())).intValue();
        return this.float2I;
    }
    public void _invalidateFloat2I() { this.float2I = null; }
    public Integer float3I() {
        if (this.float3I != null)
            return this.float3I;
        this.float3I = ((Number) (((Number) (calcFloat3())).intValue())).intValue();
        return this.float3I;
    }
    public void _invalidateFloat3I() { this.float3I = null; }
    public Integer float4I() {
        if (this.float4I != null)
            return this.float4I;
        this.float4I = ((Number) (((Number) (calcFloat4())).intValue())).intValue();
        return this.float4I;
    }
    public void _invalidateFloat4I() { this.float4I = null; }
    public Integer singleI() {
        if (this.singleI != null)
            return this.singleI;
        this.singleI = ((Number) (((Number) (singleValue())).intValue())).intValue();
        return this.singleI;
    }
    public void _invalidateSingleI() { this.singleI = null; }
    public Integer singleIfI() {
        if (this.singleIfI != null)
            return this.singleIfI;
        this.singleIfI = ((Number) (((Number) (singleValueIf())).intValue())).intValue();
        return this.singleIfI;
    }
    public void _invalidateSingleIfI() { this.singleIfI = null; }
    public float singleValue() { return singleValue; }
    public void setSingleValue(float _v) { _dirty = true; singleValue = _v; }
    public double doubleValue() { return doubleValue; }
    public void setDoubleValue(double _v) { _dirty = true; doubleValue = _v; }
    public Float singleValueIf() { return singleValueIf; }
    public void setSingleValueIf(Float _v) { _dirty = true; singleValueIf = _v; }
    public Double doubleValueIf() { return doubleValueIf; }
    public void setDoubleValueIf(Double _v) { _dirty = true; doubleValueIf = _v; }
    public FloatToI _root() { return _root; }
    public void set_root(FloatToI _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Double calcFloat1;
    private Double calcFloat2;
    private Double calcFloat3;
    private Double calcFloat4;
    private Double calcIf;
    private Integer calcIfI;
    private Integer doubleI;
    private Integer doubleIfI;
    private Integer float1I;
    private Integer float2I;
    private Integer float3I;
    private Integer float4I;
    private Integer singleI;
    private Integer singleIfI;
    private float singleValue;
    private double doubleValue;
    private Float singleValueIf;
    private Double doubleValueIf;
    private FloatToI _root;
    private KaitaiStruct.ReadWrite _parent;
}
