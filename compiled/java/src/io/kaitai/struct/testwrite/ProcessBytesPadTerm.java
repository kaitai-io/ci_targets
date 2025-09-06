// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import io.kaitai.struct.ConsistencyError;

public class ProcessBytesPadTerm extends KaitaiStruct.ReadWrite {
    public static ProcessBytesPadTerm fromFile(String fileName) throws IOException {
        return new ProcessBytesPadTerm(new ByteBufferKaitaiStream(fileName));
    }
    public ProcessBytesPadTerm() {
        this(null, null, null);
    }

    public ProcessBytesPadTerm(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ProcessBytesPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ProcessBytesPadTerm(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ProcessBytesPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this._raw_strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64);
        this.strPad = KaitaiStream.processXor(this._raw_strPad, ((byte) 21));
        this._raw_strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        this.strTerm = KaitaiStream.processXor(this._raw_strTerm, ((byte) 21));
        this._raw_strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this.strTermAndPad = KaitaiStream.processXor(this._raw_strTermAndPad, ((byte) 21));
        this._raw_strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true);
        this.strTermInclude = KaitaiStream.processXor(this._raw_strTermInclude, ((byte) 21));
        _dirty = false;
    }

    public void _fetchInstances() {
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._raw_strPad = KaitaiStream.processXor(this.strPad, ((Number) (21)).byteValue());
        if (this._raw_strPad.length > 20)
            throw new ConsistencyError("str_pad", this._raw_strPad.length, 20);
        if ( ((this._raw_strPad.length != 0) && ((this._raw_strPad[((Number) (this._raw_strPad.length - 1)).intValue()] & 0xff) == 64)) )
            throw new ConsistencyError("str_pad", (this._raw_strPad[((Number) (this._raw_strPad.length - 1)).intValue()] & 0xff), 64);
        this._io.writeBytesLimit(this._raw_strPad, 20, (byte) 64, (byte) 64);
        this._raw_strTerm = KaitaiStream.processXor(this.strTerm, ((Number) (21)).byteValue());
        if (this._raw_strTerm.length > 20)
            throw new ConsistencyError("str_term", this._raw_strTerm.length, 20);
        if (KaitaiStream.byteArrayIndexOf(this._raw_strTerm, ((byte) 64)) != -1)
            throw new ConsistencyError("str_term", KaitaiStream.byteArrayIndexOf(this._raw_strTerm, ((byte) 64)), -1);
        this._io.writeBytesLimit(this._raw_strTerm, 20, (byte) 64, (byte) 0);
        this._raw_strTermAndPad = KaitaiStream.processXor(this.strTermAndPad, ((Number) (21)).byteValue());
        if (this._raw_strTermAndPad.length > 20)
            throw new ConsistencyError("str_term_and_pad", this._raw_strTermAndPad.length, 20);
        if (KaitaiStream.byteArrayIndexOf(this._raw_strTermAndPad, ((byte) 64)) != -1)
            throw new ConsistencyError("str_term_and_pad", KaitaiStream.byteArrayIndexOf(this._raw_strTermAndPad, ((byte) 64)), -1);
        if (this._raw_strTermAndPad.length == 20) {
            if ( ((this._raw_strTermAndPad.length != 0) && ((this._raw_strTermAndPad[((Number) (this._raw_strTermAndPad.length - 1)).intValue()] & 0xff) == 43)) )
                throw new ConsistencyError("str_term_and_pad", (this._raw_strTermAndPad[((Number) (this._raw_strTermAndPad.length - 1)).intValue()] & 0xff), 43);
        }
        this._io.writeBytesLimit(this._raw_strTermAndPad, 20, (byte) 64, (byte) 43);
        this._raw_strTermInclude = KaitaiStream.processXor(this.strTermInclude, ((Number) (21)).byteValue());
        if (this._raw_strTermInclude.length > 20)
            throw new ConsistencyError("str_term_include", this._raw_strTermInclude.length, 20);
        if (this._raw_strTermInclude.length < 20) {
            if (this._raw_strTermInclude.length == 0)
                throw new ConsistencyError("str_term_include", this._raw_strTermInclude.length, 0);
            if (KaitaiStream.byteArrayIndexOf(this._raw_strTermInclude, ((byte) 64)) != this._raw_strTermInclude.length - 1)
                throw new ConsistencyError("str_term_include", KaitaiStream.byteArrayIndexOf(this._raw_strTermInclude, ((byte) 64)), this._raw_strTermInclude.length - 1);
        }
        if (this._raw_strTermInclude.length == 20) {
            if ( ((KaitaiStream.byteArrayIndexOf(this._raw_strTermInclude, ((byte) 64)) != -1) && (KaitaiStream.byteArrayIndexOf(this._raw_strTermInclude, ((byte) 64)) != this._raw_strTermInclude.length - 1)) )
                throw new ConsistencyError("str_term_include", KaitaiStream.byteArrayIndexOf(this._raw_strTermInclude, ((byte) 64)), this._raw_strTermInclude.length - 1);
        }
        this._io.writeBytesLimit(this._raw_strTermInclude, 20, (byte) 0, (byte) 0);
    }

    public void _check() {
        _dirty = false;
    }
    private byte[] strPad;
    private byte[] strTerm;
    private byte[] strTermAndPad;
    private byte[] strTermInclude;
    private ProcessBytesPadTerm _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_strPad;
    private byte[] _raw_strTerm;
    private byte[] _raw_strTermAndPad;
    private byte[] _raw_strTermInclude;
    public byte[] strPad() { return strPad; }
    public void setStrPad(byte[] _v) { _dirty = true; strPad = _v; }
    public byte[] strTerm() { return strTerm; }
    public void setStrTerm(byte[] _v) { _dirty = true; strTerm = _v; }
    public byte[] strTermAndPad() { return strTermAndPad; }
    public void setStrTermAndPad(byte[] _v) { _dirty = true; strTermAndPad = _v; }
    public byte[] strTermInclude() { return strTermInclude; }
    public void setStrTermInclude(byte[] _v) { _dirty = true; strTermInclude = _v; }
    public ProcessBytesPadTerm _root() { return _root; }
    public void set_root(ProcessBytesPadTerm _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    public byte[] _raw_strPad() { return _raw_strPad; }
    public void set_raw_StrPad(byte[] _v) { _dirty = true; _raw_strPad = _v; }
    public byte[] _raw_strTerm() { return _raw_strTerm; }
    public void set_raw_StrTerm(byte[] _v) { _dirty = true; _raw_strTerm = _v; }
    public byte[] _raw_strTermAndPad() { return _raw_strTermAndPad; }
    public void set_raw_StrTermAndPad(byte[] _v) { _dirty = true; _raw_strTermAndPad = _v; }
    public byte[] _raw_strTermInclude() { return _raw_strTermInclude; }
    public void set_raw_StrTermInclude(byte[] _v) { _dirty = true; _raw_strTermInclude = _v; }
}
