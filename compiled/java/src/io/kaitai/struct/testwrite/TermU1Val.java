// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;

public class TermU1Val extends KaitaiStruct.ReadWrite {
    public static TermU1Val fromFile(String fileName) throws IOException {
        return new TermU1Val(new ByteBufferKaitaiStream(fileName));
    }
    public TermU1Val() {
        this(null, null, null);
    }

    public TermU1Val(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermU1Val(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public TermU1Val(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, TermU1Val _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.foo = this._io.readBytesTerm((byte) 227, false, false, true);
        this.bar = new String(this._io.readBytesTerm((byte) 171, true, true, true), StandardCharsets.UTF_8);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytes(this.foo);
        {
            long _pos = this._io.pos();
            this._io.writeU1(227);
            this._io.seek(_pos);
        }
        this._io.writeBytes((this.bar).getBytes(Charset.forName("UTF-8")));
    }

    public void _check() {
        if (KaitaiStream.byteArrayIndexOf(this.foo, ((byte) 227)) != -1)
            throw new ConsistencyError("foo", KaitaiStream.byteArrayIndexOf(this.foo, ((byte) 227)), -1);
        if ((this.bar).getBytes(Charset.forName("UTF-8")).length == 0)
            throw new ConsistencyError("bar", (this.bar).getBytes(Charset.forName("UTF-8")).length, 0);
        if (KaitaiStream.byteArrayIndexOf((this.bar).getBytes(Charset.forName("UTF-8")), ((byte) 171)) != (this.bar).getBytes(Charset.forName("UTF-8")).length - 1)
            throw new ConsistencyError("bar", KaitaiStream.byteArrayIndexOf((this.bar).getBytes(Charset.forName("UTF-8")), ((byte) 171)), (this.bar).getBytes(Charset.forName("UTF-8")).length - 1);
        _dirty = false;
    }
    private byte[] foo;
    private String bar;
    private TermU1Val _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] foo() { return foo; }
    public void setFoo(byte[] _v) { _dirty = true; foo = _v; }
    public String bar() { return bar; }
    public void setBar(String _v) { _dirty = true; bar = _v; }
    public TermU1Val _root() { return _root; }
    public void set_root(TermU1Val _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
