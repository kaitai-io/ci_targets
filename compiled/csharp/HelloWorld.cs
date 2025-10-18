// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class HelloWorld : KaitaiStruct
    {
        public static HelloWorld FromFile(string fileName)
        {
            return new HelloWorld(new KaitaiStream(fileName));
        }

        public HelloWorld(KaitaiStream p__io, KaitaiStruct p__parent = null, HelloWorld p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _one = m_io.ReadU1();
        }
        public byte One { get { return _one; } }
        public HelloWorld M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte _one;
        private HelloWorld m_root;
        private KaitaiStruct m_parent;
    }
}
