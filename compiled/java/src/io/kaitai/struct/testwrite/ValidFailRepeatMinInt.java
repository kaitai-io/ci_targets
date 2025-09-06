// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class ValidFailRepeatMinInt extends KaitaiStruct.ReadWrite {
    public static ValidFailRepeatMinInt fromFile(String fileName) throws IOException {
        return new ValidFailRepeatMinInt(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailRepeatMinInt() {
        this(null, null, null);
    }

    public ValidFailRepeatMinInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatMinInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatMinInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailRepeatMinInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = new ArrayList<Byte>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.foo.add(this._io.readS1());
                if (!(this.foo.get(((Number) (i)).intValue()) >= 0)) {
                    throw new KaitaiStream.ValidationLessThanError(0, this.foo.get(((Number) (i)).intValue()), this._io, "/seq/0");
                }
                i++;
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.foo.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.foo.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("foo", this._io.size() - this._io.pos(), 0);
            this._io.writeS1(this.foo.get(((Number) (i)).intValue()));
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("foo", this._io.size() - this._io.pos(), 0);
    }

    public void _check() {
        for (int i = 0; i < this.foo.size(); i++) {
            if (!(this.foo.get(((Number) (i)).intValue()) >= 0)) {
                throw new KaitaiStream.ValidationLessThanError(0, this.foo.get(((Number) (i)).intValue()), null, "/seq/0");
            }
        }
        _dirty = false;
    }
    private List<Byte> foo;
    private ValidFailRepeatMinInt _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Byte> foo() { return foo; }
    public void setFoo(List<Byte> _v) { _dirty = true; foo = _v; }
    public ValidFailRepeatMinInt _root() { return _root; }
    public void set_root(ValidFailRepeatMinInt _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
