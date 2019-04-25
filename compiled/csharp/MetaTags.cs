// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class MetaTags : KaitaiStruct
    {
        public static MetaTags FromFile(string fileName)
        {
            return new MetaTags(new KaitaiStream(fileName));
        }

        public MetaTags(KaitaiStream p__io, KaitaiStruct p__parent = null, MetaTags p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
        }
        private MetaTags m_root;
        private KaitaiStruct m_parent;
        public MetaTags M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
