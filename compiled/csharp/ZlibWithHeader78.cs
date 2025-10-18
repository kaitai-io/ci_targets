// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ZlibWithHeader78 : KaitaiStruct
    {
        public static ZlibWithHeader78 FromFile(string fileName)
        {
            return new ZlibWithHeader78(new KaitaiStream(fileName));
        }

        public ZlibWithHeader78(KaitaiStream p__io, KaitaiStruct p__parent = null, ZlibWithHeader78 p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            __raw_data = m_io.ReadBytesFull();
            _data = m_io.ProcessZlib(__raw_data);
        }
        public byte[] Data { get { return _data; } }
        public ZlibWithHeader78 M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawData { get { return __raw_data; } }
        private byte[] _data;
        private ZlibWithHeader78 m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_data;
    }
}
