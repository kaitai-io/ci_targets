// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidSwitch extends KaitaiStruct.ReadWrite {
    public static ValidSwitch fromFile(String fileName) throws IOException {
        return new ValidSwitch(new ByteBufferKaitaiStream(fileName));
    }
    public ValidSwitch() {
        this(null, null, null);
    }

    public ValidSwitch(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidSwitch(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidSwitch(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidSwitch _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.a = this._io.readU1();
        if (!(this.a == 80)) {
            throw new KaitaiStream.ValidationNotEqualError(80, this.a, this._io, "/seq/0");
        }
        switch (a()) {
        case 80: {
            this.b = ((Number) (this._io.readU2le())).intValue();
            break;
        }
        default: {
            this.b = ((Number) (this._io.readU2be())).intValue();
            break;
        }
        }
        if (!(this.b == 17217)) {
            throw new KaitaiStream.ValidationNotEqualError(17217, this.b, this._io, "/seq/1");
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        switch (a()) {
        case 80: {
            break;
        }
        default: {
            break;
        }
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU1(this.a);
        switch (a()) {
        case 80: {
            this._io.writeU2le(((Number) (this.b)).intValue());
            break;
        }
        default: {
            this._io.writeU2be(((Number) (this.b)).intValue());
            break;
        }
        }
    }

    public void _check() {
        if (!(this.a == 80)) {
            throw new KaitaiStream.ValidationNotEqualError(80, this.a, null, "/seq/0");
        }
        switch (a()) {
        case 80: {
            break;
        }
        default: {
            break;
        }
        }
        if (!(this.b == 17217)) {
            throw new KaitaiStream.ValidationNotEqualError(17217, this.b, null, "/seq/1");
        }
        _dirty = false;
    }
    private int a;
    private int b;
    private ValidSwitch _root;
    private KaitaiStruct.ReadWrite _parent;
    public int a() { return a; }
    public void setA(int _v) { _dirty = true; a = _v; }
    public int b() { return b; }
    public void setB(int _v) { _dirty = true; b = _v; }
    public ValidSwitch _root() { return _root; }
    public void set_root(ValidSwitch _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
