// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class BytesPadTerm extends KaitaiStruct {
    public static BytesPadTerm fromFile(String fileName) throws IOException {
        return new BytesPadTerm(new KaitaiStream(fileName));
    }

    public BytesPadTerm(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _read();
    }

    public BytesPadTerm(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _read();
    }

    public BytesPadTerm(KaitaiStream _io, KaitaiStruct _parent, BytesPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _read();
    }
    private void _read() {
        this.strPad = KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64);
        this.strTerm = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false);
        this.strTermAndPad = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false);
        this.strTermInclude = KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true);
    }
    private byte[] strPad;
    private byte[] strTerm;
    private byte[] strTermAndPad;
    private byte[] strTermInclude;
    private BytesPadTerm _root;
    private KaitaiStruct _parent;
    public byte[] strPad() { return strPad; }
    public byte[] strTerm() { return strTerm; }
    public byte[] strTermAndPad() { return strTermAndPad; }
    public byte[] strTermInclude() { return strTermInclude; }
    public BytesPadTerm _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
