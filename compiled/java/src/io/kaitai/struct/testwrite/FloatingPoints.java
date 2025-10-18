// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class FloatingPoints extends KaitaiStruct.ReadWrite {
    public static FloatingPoints fromFile(String fileName) throws IOException {
        return new FloatingPoints(new ByteBufferKaitaiStream(fileName));
    }
    public FloatingPoints() {
        this(null, null, null);
    }

    public FloatingPoints(KaitaiStream _io) {
        this(_io, null, null);
    }

    public FloatingPoints(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public FloatingPoints(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, FloatingPoints _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.singleValue = this._io.readF4le();
        this.doubleValue = this._io.readF8le();
        this.singleValueBe = this._io.readF4be();
        this.doubleValueBe = this._io.readF8be();
        this.approximateValue = this._io.readF4le();
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeF4le(this.singleValue);
        this._io.writeF8le(this.doubleValue);
        this._io.writeF4be(this.singleValueBe);
        this._io.writeF8be(this.doubleValueBe);
        this._io.writeF4le(this.approximateValue);
    }

    public void _check() {
        _dirty = false;
    }
    public Double doubleValuePlusFloat() {
        if (this.doubleValuePlusFloat != null)
            return this.doubleValuePlusFloat;
        this.doubleValuePlusFloat = ((Number) (doubleValue() + 0.05)).doubleValue();
        return this.doubleValuePlusFloat;
    }
    public void _invalidateDoubleValuePlusFloat() { this.doubleValuePlusFloat = null; }
    public Double singleValuePlusFloat() {
        if (this.singleValuePlusFloat != null)
            return this.singleValuePlusFloat;
        this.singleValuePlusFloat = ((Number) (singleValue() + 0.5)).doubleValue();
        return this.singleValuePlusFloat;
    }
    public void _invalidateSingleValuePlusFloat() { this.singleValuePlusFloat = null; }
    public Double singleValuePlusInt() {
        if (this.singleValuePlusInt != null)
            return this.singleValuePlusInt;
        this.singleValuePlusInt = ((Number) (singleValue() + 1)).doubleValue();
        return this.singleValuePlusInt;
    }
    public void _invalidateSingleValuePlusInt() { this.singleValuePlusInt = null; }
    public float singleValue() { return singleValue; }
    public void setSingleValue(float _v) { _dirty = true; singleValue = _v; }
    public double doubleValue() { return doubleValue; }
    public void setDoubleValue(double _v) { _dirty = true; doubleValue = _v; }
    public float singleValueBe() { return singleValueBe; }
    public void setSingleValueBe(float _v) { _dirty = true; singleValueBe = _v; }
    public double doubleValueBe() { return doubleValueBe; }
    public void setDoubleValueBe(double _v) { _dirty = true; doubleValueBe = _v; }
    public float approximateValue() { return approximateValue; }
    public void setApproximateValue(float _v) { _dirty = true; approximateValue = _v; }
    public FloatingPoints _root() { return _root; }
    public void set_root(FloatingPoints _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private Double doubleValuePlusFloat;
    private Double singleValuePlusFloat;
    private Double singleValuePlusInt;
    private float singleValue;
    private double doubleValue;
    private float singleValueBe;
    private double doubleValueBe;
    private float approximateValue;
    private FloatingPoints _root;
    private KaitaiStruct.ReadWrite _parent;
}
