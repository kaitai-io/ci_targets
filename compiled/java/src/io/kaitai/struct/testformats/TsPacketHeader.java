// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Map;
import java.util.HashMap;


/**
 * describes the first 4 header bytes of a TS Packet header
 */
public class TsPacketHeader extends KaitaiStruct {
    public static TsPacketHeader fromFile(String fileName) throws IOException {
        return new TsPacketHeader(new ByteBufferKaitaiStream(fileName));
    }

    public enum AdaptationFieldControlEnum {
        RESERVED(0),
        PAYLOAD_ONLY(1),
        ADAPTATION_FIELD_ONLY(2),
        ADAPTATION_FIELD_AND_PAYLOAD(3);

        private final long id;
        AdaptationFieldControlEnum(long id) { this.id = id; }
        public long id() { return id; }
        private static final Map<Long, AdaptationFieldControlEnum> byId = new HashMap<Long, AdaptationFieldControlEnum>(4);
        static {
            for (AdaptationFieldControlEnum e : AdaptationFieldControlEnum.values())
                byId.put(e.id(), e);
        }
        public static AdaptationFieldControlEnum byId(long id) { return byId.get(id); }
    }

    public TsPacketHeader(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TsPacketHeader(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TsPacketHeader(KaitaiStream _io, KaitaiStruct _parent, TsPacketHeader _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.syncByte = this._io.readU1();
        this.transportErrorIndicator = this._io.readBitsIntBe(1) != 0;
        this.payloadUnitStartIndicator = this._io.readBitsIntBe(1) != 0;
        this.transportPriority = this._io.readBitsIntBe(1) != 0;
        this.pid = this._io.readBitsIntBe(13);
        this.transportScramblingControl = this._io.readBitsIntBe(2);
        this.adaptationFieldControl = AdaptationFieldControlEnum.byId(this._io.readBitsIntBe(2));
        this.continuityCounter = this._io.readBitsIntBe(4);
        this.tsPacketRemain = this._io.readBytes(184);
    }

    public void _fetchInstances() {
    }
    private int syncByte;
    private boolean transportErrorIndicator;
    private boolean payloadUnitStartIndicator;
    private boolean transportPriority;
    private long pid;
    private long transportScramblingControl;
    private AdaptationFieldControlEnum adaptationFieldControl;
    private long continuityCounter;
    private byte[] tsPacketRemain;
    private TsPacketHeader _root;
    private KaitaiStruct _parent;
    public int syncByte() { return syncByte; }
    public boolean transportErrorIndicator() { return transportErrorIndicator; }
    public boolean payloadUnitStartIndicator() { return payloadUnitStartIndicator; }
    public boolean transportPriority() { return transportPriority; }
    public long pid() { return pid; }
    public long transportScramblingControl() { return transportScramblingControl; }
    public AdaptationFieldControlEnum adaptationFieldControl() { return adaptationFieldControl; }
    public long continuityCounter() { return continuityCounter; }
    public byte[] tsPacketRemain() { return tsPacketRemain; }
    public TsPacketHeader _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
