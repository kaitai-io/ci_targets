// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.List;
import java.util.ArrayList;

public class ValidFailRepeatInst extends KaitaiStruct {
    public static ValidFailRepeatInst fromFile(String fileName) throws IOException {
        return new ValidFailRepeatInst(new ByteBufferKaitaiStream(fileName));
    }

    public ValidFailRepeatInst(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatInst(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatInst(KaitaiStream _io, KaitaiStruct _parent, ValidFailRepeatInst _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        if (inst().size() == 0) {
            this.a = this._io.readBytes(0);
        }
    }

    public void _fetchInstances() {
        if (inst().size() == 0) {
        }
        inst();
        if (this.inst != null) {
            for (int i = 0; i < this.inst.size(); i++) {
            }
        }
    }
    private List<Long> inst;
    public List<Long> inst() {
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
    private byte[] a;
    private ValidFailRepeatInst _root;
    private KaitaiStruct _parent;
    public byte[] a() { return a; }
    public ValidFailRepeatInst _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
