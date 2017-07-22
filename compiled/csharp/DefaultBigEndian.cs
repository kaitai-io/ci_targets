// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class DefaultBigEndian : KaitaiStruct
    {
        public static DefaultBigEndian FromFile(string fileName)
        {
            return new DefaultBigEndian(new KaitaiStream(fileName));
        }

        public DefaultBigEndian(KaitaiStream io, KaitaiStruct parent = null, DefaultBigEndian root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _read();
        }
        private void _read() {
            _one = m_io.ReadU4be();
        }
        private uint _one;
        private DefaultBigEndian m_root;
        private KaitaiStruct m_parent;
        public uint One { get { return _one; } }
        public DefaultBigEndian M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
