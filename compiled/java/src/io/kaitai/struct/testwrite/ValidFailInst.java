// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailInst extends KaitaiStruct.ReadWrite {
    public static ValidFailInst fromFile(String fileName) throws IOException {
        return new ValidFailInst(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailInst() {
        this(null, null, null);
    }

    public ValidFailInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        if (inst() >= 0) {
            this.a = this._io.readU1();
        }
    }

    public void _fetchInstances() {
        if (inst() >= 0) {
        }
        inst();
    }

    public void _write_Seq() {
        _writeInst = _toWriteInst;
        if (inst() >= 0) {
            this._io.writeU1(this.a);
        }
    }

    public void _check() {
    }
    private Integer inst;
    private boolean _writeInst = false;
    private boolean _toWriteInst = true;
    public Integer inst() {
        if (_writeInst)
            _writeInst();
        if (this.inst != null)
            return this.inst;
        long _pos = this._io.pos();
        this._io.seek(5);
        this.inst = this._io.readU1();
        if (!(this.inst == 80)) {
            throw new KaitaiStream.ValidationNotEqualError(80, this.inst, this._io, "/instances/inst");
        }
        this._io.seek(_pos);
        return this.inst;
    }
    public void setInst(int _v) { inst = _v; }
    public void setInst_ToWrite(boolean _v) { _toWriteInst = _v; }

    public void _writeInst() {
        _writeInst = false;
        long _pos = this._io.pos();
        this._io.seek(5);
        this._io.writeU1(this.inst);
        this._io.seek(_pos);
    }

    public void _checkInst() {
        if (!(this.inst == 80)) {
            throw new KaitaiStream.ValidationNotEqualError(80, this.inst, null, "/instances/inst");
        }
    }
    private Integer a;
    private ValidFailInst _root;
    private KaitaiStruct.ReadWrite _parent;
    public Integer a() { return a; }
    public void setA(Integer _v) { a = _v; }
    public ValidFailInst _root() { return _root; }
    public void set_root(ValidFailInst _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
