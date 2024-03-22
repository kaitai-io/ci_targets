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
    private Double doubleValuePlusFloat;
    public Double doubleValuePlusFloat() {
        if (this.doubleValuePlusFloat != null)
            return this.doubleValuePlusFloat;
        double _tmp = (double) (doubleValue() + 0.05);
        this.doubleValuePlusFloat = _tmp;
        return this.doubleValuePlusFloat;
    }
    private Double singleValuePlusFloat;
    public Double singleValuePlusFloat() {
        if (this.singleValuePlusFloat != null)
            return this.singleValuePlusFloat;
        double _tmp = (double) (singleValue() + 0.5);
        this.singleValuePlusFloat = _tmp;
        return this.singleValuePlusFloat;
    }
    private Double singleValuePlusInt;
    public Double singleValuePlusInt() {
        if (this.singleValuePlusInt != null)
            return this.singleValuePlusInt;
        double _tmp = (double) (singleValue() + 1);
        this.singleValuePlusInt = _tmp;
        return this.singleValuePlusInt;
    }
    private float singleValue;
    private double doubleValue;
    private float singleValueBe;
    private double doubleValueBe;
    private float approximateValue;
    private FloatingPoints _root;
    private KaitaiStruct _parent;
    public float singleValue() { return singleValue; }
    public double doubleValue() { return doubleValue; }
    public float singleValueBe() { return singleValueBe; }
    public double doubleValueBe() { return doubleValueBe; }
    public float approximateValue() { return approximateValue; }
    public FloatingPoints _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
