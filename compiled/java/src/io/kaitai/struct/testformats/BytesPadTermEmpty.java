// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BytesPadTermEmpty extends KaitaiStruct {
    public static BytesPadTermEmpty fromFile(String fileName) throws IOException {
        return new BytesPadTermEmpty(new ByteBufferKaitaiStream(fileName));
    }

    public BytesPadTermEmpty(KaitaiStream _io) {
        this(_io, null, null);
    }

    public BytesPadTermEmpty(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public BytesPadTermEmpty(KaitaiStream _io, KaitaiStruct _parent, BytesPadTermEmpty _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64);
        this.strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        this.strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this.strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true);
    }

    public void _fetchInstances() {
    }
    public byte[] strPad() { return strPad; }
    public byte[] strTerm() { return strTerm; }
    public byte[] strTermAndPad() { return strTermAndPad; }
    public byte[] strTermInclude() { return strTermInclude; }
    public BytesPadTermEmpty _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private byte[] strPad;
    private byte[] strTerm;
    private byte[] strTermAndPad;
    private byte[] strTermInclude;
    private BytesPadTermEmpty _root;
    private KaitaiStruct _parent;
}
