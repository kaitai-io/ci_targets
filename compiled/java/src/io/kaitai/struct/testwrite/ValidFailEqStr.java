// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class ValidFailEqStr extends KaitaiStruct.ReadWrite {
    public static ValidFailEqStr fromFile(String fileName) throws IOException {
        return new ValidFailEqStr(new ByteBufferKaitaiStream(fileName));
    }
    public ValidFailEqStr() {
        this(null, null, null);
    }

    public ValidFailEqStr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ValidFailEqStr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ValidFailEqStr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ValidFailEqStr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = new String(this._io.readBytes(4), StandardCharsets.US_ASCII);
        if (!(this.foo.equals("BACK"))) {
            throw new KaitaiStream.ValidationNotEqualError("BACK", this.foo, this._io, "/seq/0");
        }
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBytes((this.foo).getBytes(Charset.forName("ASCII")));
    }

    public void _check() {
        if ((this.foo).getBytes(Charset.forName("ASCII")).length != 4)
            throw new ConsistencyError("foo", (this.foo).getBytes(Charset.forName("ASCII")).length, 4);
        if (!(this.foo.equals("BACK"))) {
            throw new KaitaiStream.ValidationNotEqualError("BACK", this.foo, null, "/seq/0");
        }
    }
    private String foo;
    private ValidFailEqStr _root;
    private KaitaiStruct.ReadWrite _parent;
    public String foo() { return foo; }
    public void setFoo(String _v) { foo = _v; }
    public ValidFailEqStr _root() { return _root; }
    public void set_root(ValidFailEqStr _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
