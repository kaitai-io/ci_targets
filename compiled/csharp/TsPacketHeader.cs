// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{

    /// <summary>
    /// describes the first 4 header bytes of a TS Packet header
    /// </summary>
    public partial class TsPacketHeader : KaitaiStruct
    {
        public static TsPacketHeader FromFile(string fileName)
        {
            return new TsPacketHeader(new KaitaiStream(fileName));
        }


        public enum AdaptationFieldControlEnum
        {
            Reserved = 0,
            PayloadOnly = 1,
            AdaptationFieldOnly = 2,
            AdaptationFieldAndPayload = 3,
        }
        public TsPacketHeader(KaitaiStream p__io, KaitaiStruct p__parent = null, TsPacketHeader p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _syncByte = m_io.ReadU1();
            _transportErrorIndicator = m_io.ReadBitsIntBe(1) != 0;
            _payloadUnitStartIndicator = m_io.ReadBitsIntBe(1) != 0;
            _transportPriority = m_io.ReadBitsIntBe(1) != 0;
            _pid = m_io.ReadBitsIntBe(13);
            _transportScramblingControl = m_io.ReadBitsIntBe(2);
            _adaptationFieldControl = ((AdaptationFieldControlEnum) m_io.ReadBitsIntBe(2));
            _continuityCounter = m_io.ReadBitsIntBe(4);
            m_io.AlignToByte();
            _tsPacketRemain = m_io.ReadBytes(184);
        }
        private byte _syncByte;
        private bool _transportErrorIndicator;
        private bool _payloadUnitStartIndicator;
        private bool _transportPriority;
        private ulong _pid;
        private ulong _transportScramblingControl;
        private AdaptationFieldControlEnum _adaptationFieldControl;
        private ulong _continuityCounter;
        private byte[] _tsPacketRemain;
        private TsPacketHeader m_root;
        private KaitaiStruct m_parent;
        public byte SyncByte { get { return _syncByte; } }
        public bool TransportErrorIndicator { get { return _transportErrorIndicator; } }
        public bool PayloadUnitStartIndicator { get { return _payloadUnitStartIndicator; } }
        public bool TransportPriority { get { return _transportPriority; } }
        public ulong Pid { get { return _pid; } }
        public ulong TransportScramblingControl { get { return _transportScramblingControl; } }
        public AdaptationFieldControlEnum AdaptationFieldControl { get { return _adaptationFieldControl; } }
        public ulong ContinuityCounter { get { return _continuityCounter; } }
        public byte[] TsPacketRemain { get { return _tsPacketRemain; } }
        public TsPacketHeader M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
