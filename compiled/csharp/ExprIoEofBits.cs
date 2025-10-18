// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprIoEofBits : KaitaiStruct
    {
        public static ExprIoEofBits FromFile(string fileName)
        {
            return new ExprIoEofBits(new KaitaiStream(fileName));
        }

        public ExprIoEofBits(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprIoEofBits p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
        }
        public void _read()
        {
            _foo = m_io.ReadBitsIntBe(20);
            if (!(M_Io.IsEof)) {
                _bar = m_io.ReadBitsIntBe(4);
            }
            if (!(M_Io.IsEof)) {
                _baz = m_io.ReadBitsIntBe(16);
            }
            m_io.AlignToByte();
            _align = m_io.ReadBytes(0);
            if (!(M_Io.IsEof)) {
                _qux = m_io.ReadBitsIntBe(16);
            }
        }
        public ulong Foo { get { return _foo; } }
        public ulong? Bar { get { return _bar; } }
        public ulong? Baz { get { return _baz; } }
        public byte[] Align { get { return _align; } }
        public ulong? Qux { get { return _qux; } }
        public ExprIoEofBits M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private ulong _foo;
        private ulong? _bar;
        private ulong? _baz;
        private byte[] _align;
        private ulong? _qux;
        private ExprIoEofBits m_root;
        private KaitaiStruct m_parent;
    }
}
