// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;
import java.util.List;
import java.util.ArrayList;

public class ValidFailRepeatInst extends KaitaiStruct.ReadWrite {
    public static ValidFailRepeatInst fromFile(String fileName) throws IOException {
        return new ValidFailRepeatInst(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailRepeatInst() {
        this(null, null, null);
    }

    public ValidFailRepeatInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatInst(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailRepeatInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        if (inst().size() == 0) {
            this.a = this._io.readBytes(0);
        }
    }

    public void _fetchInstances() {
        if (inst().size() == 0) {
        }
        inst();
        for (int i = 0; i < this.inst.size(); i++) {
        }
    }

    public void _write_Seq() {
        _writeInst = _toWriteInst;
        if (inst().size() == 0) {
            if (this.a.length != 0)
                throw new ConsistencyError("a", this.a.length, 0);
            this._io.writeBytes(this.a);
        }
    }

    public void _check() {
    }
    private List<Long> inst;
    private boolean _writeInst = false;
    private boolean _toWriteInst = true;
    public List<Long> inst() {
        if (_writeInst)
            _writeInst();
        if (this.inst != null)
            return this.inst;
        long _pos = this._io.pos();
        this._io.seek(0);
        this.inst = new ArrayList<Long>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.inst.add(this._io.readU4be());
                if (!(this.inst.get(((Number) (i)).intValue()) == 305419896)) {
                    throw new KaitaiStream.ValidationNotEqualError(305419896, this.inst.get(((Number) (i)).intValue()), this._io, "/instances/inst");
                }
                i++;
            }
        }
        this._io.seek(_pos);
        return this.inst;
    }
    public void setInst(List<Long> _v) { inst = _v; }
    public void setInst_ToWrite(boolean _v) { _toWriteInst = _v; }

    public void _writeInst() {
        _writeInst = false;
        long _pos = this._io.pos();
        this._io.seek(0);
        for (int i = 0; i < this.inst.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("inst", this._io.size() - this._io.pos(), 0);
            this._io.writeU4be(this.inst.get(((Number) (i)).intValue()));
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("inst", this._io.size() - this._io.pos(), 0);
        this._io.seek(_pos);
    }

    public void _checkInst() {
        for (int i = 0; i < this.inst.size(); i++) {
            if (!(this.inst.get(((Number) (i)).intValue()) == 305419896)) {
                throw new KaitaiStream.ValidationNotEqualError(305419896, this.inst.get(((Number) (i)).intValue()), null, "/instances/inst");
            }
        }
    }
    private byte[] a;
    private ValidFailRepeatInst _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] a() { return a; }
    public void setA(byte[] _v) { a = _v; }
    public ValidFailRepeatInst _root() { return _root; }
    public void set_root(ValidFailRepeatInst _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
