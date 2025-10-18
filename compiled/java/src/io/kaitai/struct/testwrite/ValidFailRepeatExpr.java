// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class ValidFailRepeatExpr extends KaitaiStruct.ReadWrite {
    public static ValidFailRepeatExpr fromFile(String fileName) throws IOException {
        return new ValidFailRepeatExpr(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailRepeatExpr() {
        this(null, null, null);
    }

    public ValidFailRepeatExpr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailRepeatExpr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailRepeatExpr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailRepeatExpr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = new ArrayList<byte[]>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.foo.add(this._io.readBytes(4));
                {
                    byte[] _it = this.foo.get(((Number) (i)).intValue());
                    if (!(!Arrays.equals(_it, new byte[] { 0, 18, 52, 86 }))) {
                        throw new KaitaiStream.ValidationExprError(this.foo.get(((Number) (i)).intValue()), this._io, "/seq/0");
                    }
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
            this._io.writeBytes(this.foo.get(((Number) (i)).intValue()));
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("foo", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        for (int i = 0; i < this.foo.size(); i++) {
            if (this.foo.get(((Number) (i)).intValue()).length != 4)
                throw new ConsistencyError("foo", 4, this.foo.get(((Number) (i)).intValue()).length);
            {
                byte[] _it = this.foo.get(((Number) (i)).intValue());
                if (!(!Arrays.equals(_it, new byte[] { 0, 18, 52, 86 }))) {
                    throw new KaitaiStream.ValidationExprError(this.foo.get(((Number) (i)).intValue()), null, "/seq/0");
                }
            }
        }
        _dirty = false;
    }
    public List<byte[]> foo() { return foo; }
    public void setFoo(List<byte[]> _v) { _dirty = true; foo = _v; }
    public ValidFailRepeatExpr _root() { return _root; }
    public void set_root(ValidFailRepeatExpr _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<byte[]> foo;
    private ValidFailRepeatExpr _root;
    private KaitaiStruct.ReadWrite _parent;
}
