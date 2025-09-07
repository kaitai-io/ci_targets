// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class ValidFailRepeatMaxInt extends KaitaiStruct.ReadWrite {
    public static ValidFailRepeatMaxInt fromFile(String fileName) throws IOException {
        return new ValidFailRepeatMaxInt(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailRepeatMaxInt() {
        this(null, null, null);
    }

    public ValidFailRepeatMaxInt(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatMaxInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatMaxInt(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailRepeatMaxInt _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = new ArrayList<Integer>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.foo.add(this._io.readU1());
                if (!(this.foo.get(((Number) (i)).intValue()) <= 254)) {
                    throw new KaitaiStream.ValidationGreaterThanError(254, this.foo.get(((Number) (i)).intValue()), this._io, "/seq/0");
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
                throw new ConsistencyError("foo", 0, this._io.size() - this._io.pos());
            this._io.writeU1(this.foo.get(((Number) (i)).intValue()));
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("foo", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.foo.size(); i++) {
            if (!(this.foo.get(((Number) (i)).intValue()) <= 254)) {
                throw new KaitaiStream.ValidationGreaterThanError(254, this.foo.get(((Number) (i)).intValue()), null, "/seq/0");
            }
        }
        _dirty = false;
    }
    private List<Integer> foo;
    private ValidFailRepeatMaxInt _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Integer> foo() { return foo; }
    public void setFoo(List<Integer> _v) { _dirty = true; foo = _v; }
    public ValidFailRepeatMaxInt _root() { return _root; }
    public void set_root(ValidFailRepeatMaxInt _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
