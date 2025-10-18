// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class RepeatUntilBytesPadTerm extends KaitaiStruct {
    public static RepeatUntilBytesPadTerm fromFile(String fileName) throws IOException {
        return new RepeatUntilBytesPadTerm(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatUntilBytesPadTerm(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilBytesPadTerm(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilBytesPadTerm(KaitaiStream _io, KaitaiStruct _parent, RepeatUntilBytesPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.records = new ArrayList<byte[]>();
        {
            byte[] _it;
            int i = 0;
            do {
                _it = KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(5), (byte) 170), (byte) 85, true);
                this.records.add(_it);
                i++;
            } while (!(Arrays.equals(_it, new byte[] { -86, 85 })));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records.size(); i++) {
        }
    }
    public List<byte[]> records() { return records; }
    public RepeatUntilBytesPadTerm _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private List<byte[]> records;
    private RepeatUntilBytesPadTerm _root;
    private KaitaiStruct _parent;
}
