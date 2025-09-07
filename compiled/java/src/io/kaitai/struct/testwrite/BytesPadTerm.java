// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class BytesPadTerm extends KaitaiStruct.ReadWrite {
    public static BytesPadTerm fromFile(String fileName) throws IOException {
        return new BytesPadTerm(new ByteBufferKaitaiStream(fileName));
    }
    public BytesPadTerm() {
        this(null, null, null);
    }

    public BytesPadTerm(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BytesPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BytesPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BytesPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64);
        this.strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        this.strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this.strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true);
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeBytesLimit(this.strPad, 20, (byte) 64, (byte) 64);
        this._io.writeBytesLimit(this.strTerm, 20, (byte) 64, (byte) 0);
        this._io.writeBytesLimit(this.strTermAndPad, 20, (byte) 64, (byte) 43);
        this._io.writeBytesLimit(this.strTermInclude, 20, (byte) 0, (byte) 0);
    }

    public void _check() {
        if (this.strPad.length > 20)
            throw new ConsistencyError("str_pad", 20, this.strPad.length);
        if ( ((this.strPad.length != 0) && ((this.strPad[((Number) (this.strPad.length - 1)).intValue()] & 0xff) == 64)) )
            throw new ConsistencyError("str_pad", 64, (this.strPad[((Number) (this.strPad.length - 1)).intValue()] & 0xff));
        if (this.strTerm.length > 20)
            throw new ConsistencyError("str_term", 20, this.strTerm.length);
        if (KaitaiStream.byteArrayIndexOf(this.strTerm, ((byte) 64)) != -1)
            throw new ConsistencyError("str_term", -1, KaitaiStream.byteArrayIndexOf(this.strTerm, ((byte) 64)));
        if (this.strTermAndPad.length > 20)
            throw new ConsistencyError("str_term_and_pad", 20, this.strTermAndPad.length);
        if (KaitaiStream.byteArrayIndexOf(this.strTermAndPad, ((byte) 64)) != -1)
            throw new ConsistencyError("str_term_and_pad", -1, KaitaiStream.byteArrayIndexOf(this.strTermAndPad, ((byte) 64)));
        if (this.strTermAndPad.length == 20) {
            if ( ((this.strTermAndPad.length != 0) && ((this.strTermAndPad[((Number) (this.strTermAndPad.length - 1)).intValue()] & 0xff) == 43)) )
                throw new ConsistencyError("str_term_and_pad", 43, (this.strTermAndPad[((Number) (this.strTermAndPad.length - 1)).intValue()] & 0xff));
        }
        if (this.strTermInclude.length > 20)
            throw new ConsistencyError("str_term_include", 20, this.strTermInclude.length);
        if (this.strTermInclude.length < 20) {
            if (this.strTermInclude.length == 0)
                throw new ConsistencyError("str_term_include", 0, this.strTermInclude.length);
            if (KaitaiStream.byteArrayIndexOf(this.strTermInclude, ((byte) 64)) != this.strTermInclude.length - 1)
                throw new ConsistencyError("str_term_include", this.strTermInclude.length - 1, KaitaiStream.byteArrayIndexOf(this.strTermInclude, ((byte) 64)));
        }
        if (this.strTermInclude.length == 20) {
            if ( ((KaitaiStream.byteArrayIndexOf(this.strTermInclude, ((byte) 64)) != -1) && (KaitaiStream.byteArrayIndexOf(this.strTermInclude, ((byte) 64)) != this.strTermInclude.length - 1)) )
                throw new ConsistencyError("str_term_include", this.strTermInclude.length - 1, KaitaiStream.byteArrayIndexOf(this.strTermInclude, ((byte) 64)));
        }
        _dirty = false;
    }
    private byte[] strPad;
    private byte[] strTerm;
    private byte[] strTermAndPad;
    private byte[] strTermInclude;
    private BytesPadTerm _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] strPad() { return strPad; }
    public void setStrPad(byte[] _v) { _dirty = true; strPad = _v; }
    public byte[] strTerm() { return strTerm; }
    public void setStrTerm(byte[] _v) { _dirty = true; strTerm = _v; }
    public byte[] strTermAndPad() { return strTermAndPad; }
    public void setStrTermAndPad(byte[] _v) { _dirty = true; strTermAndPad = _v; }
    public byte[] strTermInclude() { return strTermInclude; }
    public void setStrTermInclude(byte[] _v) { _dirty = true; strTermInclude = _v; }
    public BytesPadTerm _root() { return _root; }
    public void set_root(BytesPadTerm _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
