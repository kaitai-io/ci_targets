// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class RepeatNBytesPadTerm : KaitaiStruct
    {
        public static RepeatNBytesPadTerm FromFile(string fileName)
        {
            return new RepeatNBytesPadTerm(new KaitaiStream(fileName));
        }

        public RepeatNBytesPadTerm(KaitaiStream p__io, KaitaiStruct p__parent = null, RepeatNBytesPadTerm p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _records = new List<byte[]>();
            for (var i = 0; i < 3; i++)
            {
                _records.Add(KaitaiStream.BytesTerminate(KaitaiStream.BytesStripRight(m_io.ReadBytes(5), 170), 85, true));
            }
        }
        public List<byte[]> Records { get { return _records; } }
        public RepeatNBytesPadTerm M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<byte[]> _records;
        private RepeatNBytesPadTerm m_root;
        private KaitaiStruct m_parent;
    }
}
