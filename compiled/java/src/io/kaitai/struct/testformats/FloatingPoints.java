// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class FloatingPoints extends KaitaiStruct {
    public static FloatingPoints fromFile(String fileName) throws IOException {
        return new FloatingPoints(new ByteBufferKaitaiStream(fileName));
    }

    public FloatingPoints(KaitaiStream _io) {
        this(_io, null, null);
    }

    public FloatingPoints(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public FloatingPoints(KaitaiStream _io, KaitaiStruct _parent, FloatingPoints _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.singleValue = this._io.readF4le();
        this.doubleValue = this._io.readF8le();
        this.singleValueBe = this._io.readF4be();
        this.doubleValueBe = this._io.readF8be();
        this.approximateValue = this._io.readF4le();
    }

    public void _fetchInstances() {
    }
    public Double doubleValuePlusFloat() {
        if (this.doubleValuePlusFloat != null)
            return this.doubleValuePlusFloat;
        this.doubleValuePlusFloat = ((Number) (doubleValue() + 0.05)).doubleValue();
        return this.doubleValuePlusFloat;
    }
    public Double singleValuePlusFloat() {
        if (this.singleValuePlusFloat != null)
            return this.singleValuePlusFloat;
        this.singleValuePlusFloat = ((Number) (singleValue() + 0.5)).doubleValue();
        return this.singleValuePlusFloat;
    }
    public Double singleValuePlusInt() {
        if (this.singleValuePlusInt != null)
            return this.singleValuePlusInt;
        this.singleValuePlusInt = ((Number) (singleValue() + 1)).doubleValue();
        return this.singleValuePlusInt;
    }
    public float singleValue() { return singleValue; }
    public double doubleValue() { return doubleValue; }
    public float singleValueBe() { return singleValueBe; }
    public double doubleValueBe() { return doubleValueBe; }
    public float approximateValue() { return approximateValue; }
    public FloatingPoints _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Double doubleValuePlusFloat;
    private Double singleValuePlusFloat;
    private Double singleValuePlusInt;
    private float singleValue;
    private double doubleValue;
    private float singleValueBe;
    private double doubleValueBe;
    private float approximateValue;
    private FloatingPoints _root;
    private KaitaiStruct _parent;
}
