// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class BytesPadTermRoundtrip extends KaitaiStruct.ReadWrite {
    public static BytesPadTermRoundtrip fromFile(String fileName) throws IOException {
        return new BytesPadTermRoundtrip(new ByteBufferKaitaiStream(fileName));
    }
    public BytesPadTermRoundtrip() {
        this(null, null, null);
    }

    public BytesPadTermRoundtrip(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BytesPadTermRoundtrip(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public BytesPadTermRoundtrip(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, BytesPadTermRoundtrip _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64);
        this.strTerm = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this.strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this.strTermInclude = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 46), (byte) 64, true);
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        this._io.writeBytesLimit(this.strPad, 20, (byte) 64, (byte) 64);
        this._io.writeBytesLimit(this.strTerm, 20, (byte) 64, (byte) 43);
        this._io.writeBytesLimit(this.strTermAndPad, 20, (byte) 64, (byte) 43);
        this._io.writeBytesLimit(this.strTermInclude, 20, (byte) 46, (byte) 46);
    }

    public void _check() {
        if (this.strPad.length > 20)
            throw new ConsistencyError("str_pad", this.strPad.length, 20);
        if ( ((this.strPad.length != 0) && ((this.strPad[((Number) (this.strPad.length - 1)).intValue()] & 0xff) == 64)) )
            throw new ConsistencyError("str_pad", (this.strPad[((Number) (this.strPad.length - 1)).intValue()] & 0xff), 64);
        if (this.strTerm.length > 20)
            throw new ConsistencyError("str_term", this.strTerm.length, 20);
        if (KaitaiStream.byteArrayIndexOf(this.strTerm, ((byte) 64)) != -1)
            throw new ConsistencyError("str_term", KaitaiStream.byteArrayIndexOf(this.strTerm, ((byte) 64)), -1);
        if (this.strTerm.length == 20) {
            if ( ((this.strTerm.length != 0) && ((this.strTerm[((Number) (this.strTerm.length - 1)).intValue()] & 0xff) == 43)) )
                throw new ConsistencyError("str_term", (this.strTerm[((Number) (this.strTerm.length - 1)).intValue()] & 0xff), 43);
        }
        if (this.strTermAndPad.length > 20)
            throw new ConsistencyError("str_term_and_pad", this.strTermAndPad.length, 20);
        if (KaitaiStream.byteArrayIndexOf(this.strTermAndPad, ((byte) 64)) != -1)
            throw new ConsistencyError("str_term_and_pad", KaitaiStream.byteArrayIndexOf(this.strTermAndPad, ((byte) 64)), -1);
        if (this.strTermAndPad.length == 20) {
            if ( ((this.strTermAndPad.length != 0) && ((this.strTermAndPad[((Number) (this.strTermAndPad.length - 1)).intValue()] & 0xff) == 43)) )
                throw new ConsistencyError("str_term_and_pad", (this.strTermAndPad[((Number) (this.strTermAndPad.length - 1)).intValue()] & 0xff), 43);
        }
        if (this.strTermInclude.length > 20)
            throw new ConsistencyError("str_term_include", this.strTermInclude.length, 20);
        if ( ((KaitaiStream.byteArrayIndexOf(this.strTermInclude, ((byte) 64)) != -1) && (KaitaiStream.byteArrayIndexOf(this.strTermInclude, ((byte) 64)) != this.strTermInclude.length - 1)) )
            throw new ConsistencyError("str_term_include", KaitaiStream.byteArrayIndexOf(this.strTermInclude, ((byte) 64)), this.strTermInclude.length - 1);
        if (KaitaiStream.byteArrayIndexOf(this.strTermInclude, ((byte) 64)) == -1) {
            if ( ((this.strTermInclude.length != 0) && ((this.strTermInclude[((Number) (this.strTermInclude.length - 1)).intValue()] & 0xff) == 46)) )
                throw new ConsistencyError("str_term_include", (this.strTermInclude[((Number) (this.strTermInclude.length - 1)).intValue()] & 0xff), 46);
        }
    }
    private byte[] strPad;
    private byte[] strTerm;
    private byte[] strTermAndPad;
    private byte[] strTermInclude;
    private BytesPadTermRoundtrip _root;
    private KaitaiStruct.ReadWrite _parent;
    public byte[] strPad() { return strPad; }
    public void setStrPad(byte[] _v) { strPad = _v; }
    public byte[] strTerm() { return strTerm; }
    public void setStrTerm(byte[] _v) { strTerm = _v; }
    public byte[] strTermAndPad() { return strTermAndPad; }
    public void setStrTermAndPad(byte[] _v) { strTermAndPad = _v; }
    public byte[] strTermInclude() { return strTermInclude; }
    public void setStrTermInclude(byte[] _v) { strTermInclude = _v; }
    public BytesPadTermRoundtrip _root() { return _root; }
    public void set_root(BytesPadTermRoundtrip _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
