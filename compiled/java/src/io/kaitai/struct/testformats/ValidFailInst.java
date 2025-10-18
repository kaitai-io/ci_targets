// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class ValidFailInst extends KaitaiStruct {
    public static ValidFailInst fromFile(String fileName) throws IOException {
        return new ValidFailInst(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailInst(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailInst(KaitaiStream _io, KaitaiStruct _parent, ValidFailInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        if (inst() >= 0) {
            this.a = this._io.readU1();
        }
    }

    public void _fetchInstances() {
        if (inst() >= 0) {
        }
        inst();
        if (this.inst != null) {
        }
    }
    public Integer inst() {
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
    public Integer a() { return a; }
    public ValidFailInst _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private Integer inst;
    private Integer a;
    private ValidFailInst _root;
    private KaitaiStruct _parent;
}
