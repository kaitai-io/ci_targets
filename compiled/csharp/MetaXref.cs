// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class MetaXref : KaitaiStruct
    {
        public static MetaXref FromFile(string fileName)
        {
            return new MetaXref(new KaitaiStream(fileName));
        }

        public MetaXref(KaitaiStream p__io, KaitaiStruct p__parent = null, MetaXref p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read() {
        }
        private MetaXref m_root;
        private KaitaiStruct m_parent;
        public MetaXref M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
